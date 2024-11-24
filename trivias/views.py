from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework import viewsets
from .models import Trivia, Participation
from .serializers import TriviaSerializer

class TriviaViewSet(viewsets.ModelViewSet):
    queryset = Trivia.objects.all()
    serializer_class = TriviaSerializer

    @action(detail=True, methods=['post'])
    def submit_answers(self, request, pk=None):
        trivia = self.get_object()
        answers = request.data.get('answers', {})
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
        question = Question.objects.get(id=question_id)
        trivia.questions.add(question)
        return Response({'message': 'Question added successfully'}, status=status.HTTP_200_OK)
    
    @action(detail=True, methods=['post'])
    def add_user(self, request, pk=None):
        trivia = self.get_object()
        user = request.data.get('user_id')
        trivia.users.add(user)
        return Response({'message': 'User added successfully'}, status=status.HTTP_200_OK)



    

    