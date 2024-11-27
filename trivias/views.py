from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework import viewsets
from .models import Trivia, Participation
from .serializers import ParticipationSerializer, TriviaSerializer
from rest_framework.exceptions import NotFound, ValidationError
from questions.models import Question
from django.db import models
from users.models import CustomUser
from rest_framework import viewsets, status
from rest_framework.permissions import IsAuthenticated
from .permissions import IsAdminUserOrCreatorOrReadOnly

from django.shortcuts import redirect, render
# Vista para mostrar el listado de trivias
from django.http import HttpResponse

# Vista personalizada para redirigir a la página de trivias
def trivias_redirect(request):
    # Aquí puedes redirigir a una página estática o dinámica, dependiendo de tus necesidades
    # Si estás usando Django con un frontend de React o una SPA, por ejemplo
    return redirect('/trivias/list.html') 

class TriviaViewSet(viewsets.ModelViewSet):
    queryset = Trivia.objects.all()
    serializer_class = TriviaSerializer
    permission_classes = [IsAuthenticated]  # Esto asegura que solo los usuarios autenticados pueden acceder


    @action(detail=True, methods=['post'])
    def submit_answers(self, request, pk=None):
        trivia = self.get_object()
        answers = request.data.get('answers', {})

        # Verificar que las respuestas son válidas
        for question_id, answer in answers.items():
            try:
                question = Question.objects.get(id=question_id)
            except Question.DoesNotExist:
                raise NotFound(f"Question with ID {question_id} does not exist.")
            
            if question not in trivia.questions.all():
                raise ValidationError(f"Question ID {question_id} is not part of this trivia.")

        # Crear participación y calcular puntaje
        participation = Participation.objects.create(
            trivia=trivia,
            user=request.user,
            answers=answers
        )
        participation.calculate_score()  # Calcular el puntaje
        return Response({'score': participation.score}, status=status.HTTP_200_OK)

    @action(detail=True, methods=['post'])
    def add_question(self, request, pk=None):
        trivia = self.get_object()
        question_id = request.data.get('question_id')

        try:
            question = Question.objects.get(id=question_id)
        except Question.DoesNotExist:
            raise NotFound(f"Question with ID {question_id} does not exist.")

        # Verificar si la pregunta ya está asociada a la trivia
        if question in trivia.questions.all():
            raise ValidationError(f"Question with ID {question_id} is already added to this trivia.")

        trivia.questions.add(question)
        return Response({'message': 'Question added successfully'}, status=status.HTTP_200_OK)

    @action(detail=True, methods=['post'])
    def add_user(self, request, pk=None):
        trivia = self.get_object()
        user_id = request.data.get('user_id')

        try:
            user = CustomUser.objects.get(id=user_id)
        except CustomUser.DoesNotExist:
            raise NotFound(f"User with ID {user_id} does not exist.")

        # Verificar si el usuario ya está asociado a la trivia
        if user in trivia.users.all():
            raise ValidationError(f"User with ID {user_id} is already added to this trivia.")

        trivia.users.add(user)
        return Response({'message': 'User added successfully'}, status=status.HTTP_200_OK)



class ParticipationViewSet(viewsets.ModelViewSet):
    queryset = Participation.objects.all()
    serializer_class = ParticipationSerializer
    permission_classes = [IsAuthenticated, IsAdminUserOrCreatorOrReadOnly]  # Puedes agregar tus permisos personalizados

    def perform_create(self, serializer):
        """
        Guarda la participación asociando el usuario autenticado como creador.
        """
        serializer.save(user=self.request.user)

    def get_queryset(self):
        """
        Filtra las participaciones por el usuario autenticado.
        """
        return Participation.objects.filter(user=self.request.user)

    @action(detail=True, methods=['post'])
    def submit_answers(self, request, pk=None):
        """
        Acción personalizada para enviar las respuestas a una participación.
        Calcula el puntaje basado en las respuestas del usuario.
        """
        participation = self.get_object()  # Obtén la participación específica
        answers = request.data.get('answers')  # Obtén las respuestas enviadas

        if not answers:
            return Response({"detail": "Se requieren respuestas para enviar."}, status=status.HTTP_400_BAD_REQUEST)

        # Actualiza las respuestas de la participación y recalcula el puntaje
        participation.answers = answers
        participation.calculate_score()  # Calcula el puntaje con el método de la participación
        participation.save()

        return Response({'score': participation.score}, status=status.HTTP_200_OK)

# from rest_framework.response import Response
# from rest_framework.decorators import action
# from rest_framework import viewsets
# from .models import Trivia, Participation
# from .serializers import ParticipationSerializer, TriviaSerializer
# from rest_framework.exceptions import NotFound, ValidationError
# from questions.models import Question
# from django.db import models
# from users.models import CustomUser
# from rest_framework import viewsets, status
# from rest_framework.permissions import IsAuthenticated
# from .permissions import IsAdminUserOrCreatorOrReadOnly



# class TriviaViewSet(viewsets.ModelViewSet):
#     queryset = Trivia.objects.all()
#     serializer_class = TriviaSerializer

#     @action(detail=True, methods=['post'])
#     def submit_answers(self, request, pk=None):
#         trivia = self.get_object()
#         answers = request.data.get('answers', {})

#         # Verificar que las respuestas son válidas
#         for question_id, answer in answers.items():
#             try:
#                 question = Question.objects.get(id=question_id)
#             except Question.DoesNotExist:
#                 raise NotFound(f"Question with ID {question_id} does not exist.")
            
#             if question not in trivia.questions.all():
#                 raise ValidationError(f"Question ID {question_id} is not part of this trivia.")

#         # Crear participación y calcular puntaje
#         participation = Participation.objects.create(
#             trivia=trivia,
#             user=request.user,
#             answers=answers
#         )
#         participation.calculate_score()  # Calcular el puntaje
#         return Response({'score': participation.score}, status=status.HTTP_200_OK)

#     @action(detail=True, methods=['post'])
#     def add_question(self, request, pk=None):
#         trivia = self.get_object()
#         question_id = request.data.get('question_id')

#         try:
#             question = Question.objects.get(id=question_id)
#         except Question.DoesNotExist:
#             raise NotFound(f"Question with ID {question_id} does not exist.")

#         # Verificar si la pregunta ya está asociada a la trivia
#         if question in trivia.questions.all():
#             raise ValidationError(f"Question with ID {question_id} is already added to this trivia.")

#         trivia.questions.add(question)
#         return Response({'message': 'Question added successfully'}, status=status.HTTP_200_OK)

#     @action(detail=True, methods=['post'])
#     def add_user(self, request, pk=None):
#         trivia = self.get_object()
#         user_id = request.data.get('user_id')

#         try:
#             user = CustomUser.objects.get(id=user_id)
#         except CustomUser.DoesNotExist:
#             raise NotFound(f"User with ID {user_id} does not exist.")

#         # Verificar si el usuario ya está asociado a la trivia
#         if user in trivia.users.all():
#             raise ValidationError(f"User with ID {user_id} is already added to this trivia.")

#         trivia.users.add(user)
#         return Response({'message': 'User added successfully'}, status=status.HTTP_200_OK)



# class ParticipationViewSet(viewsets.ModelViewSet):
#     queryset = Participation.objects.all()
#     serializer_class = ParticipationSerializer
#     permission_classes = [IsAuthenticated, IsAdminUserOrCreatorOrReadOnly]  # Puedes agregar tus permisos personalizados

#     def perform_create(self, serializer):
#         """
#         Guarda la participación asociando el usuario autenticado como creador.
#         """
#         serializer.save(user=self.request.user)

#     def get_queryset(self):
#         """
#         Filtra las participaciones por el usuario autenticado.
#         """
#         return Participation.objects.filter(user=self.request.user)

#     @action(detail=True, methods=['post'])
#     def submit_answers(self, request, pk=None):
#         """
#         Acción personalizada para enviar las respuestas a una participación.
#         Calcula el puntaje basado en las respuestas del usuario.
#         """
#         participation = self.get_object()  # Obtén la participación específica
#         answers = request.data.get('answers')  # Obtén las respuestas enviadas

#         if not answers:
#             return Response({"detail": "Se requieren respuestas para enviar."}, status=status.HTTP_400_BAD_REQUEST)

#         # Actualiza las respuestas de la participación y recalcula el puntaje
#         participation.answers = answers
#         participation.calculate_score()  # Calcula el puntaje con el método de la participación
#         participation.save()

#         return Response({'score': participation.score}, status=status.HTTP_200_OK)

