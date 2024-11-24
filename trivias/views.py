from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework import viewsets
from .models import Trivia, Participation
from .serializers import TriviaSerializer
from rest_framework.exceptions import NotFound, ValidationError
from questions.models import Question
from django.db import models
from users.models import CustomUser
from trivias.models import Trivia




class TriviaViewSet(viewsets.ModelViewSet):
    queryset = Trivia.objects.all()
    serializer_class = TriviaSerializer

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

#### **`trivias/models.py`** (Optimización de `calculate_score`):


# class Participation(models.Model):
#     user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
#     trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)
#     answers = models.JSONField()  # Almacena las respuestas del usuario
#     score = models.IntegerField(default=0)
    
#     def calculate_score(self):
#         # Obtenemos todas las preguntas asociadas a la trivia
#         trivia_questions = self.trivia.questions.all()
#         question_dict = {question.id: question for question in trivia_questions}

#         total_score = 0
#         for question_id, answer in self.answers.items():
#             # Verificar si la pregunta existe en las preguntas de la trivia
#             if question_id not in question_dict:
#                 raise ValidationError(f"Answer for question ID {question_id} does not belong to this trivia.")
            
#             question = question_dict[question_id]
#             if question.correct_answer == answer:
#                 total_score += {'easy': 1, 'medium': 2, 'hard': 3}.get(question.level, 0)

#         self.score = total_score
#         self.save()

