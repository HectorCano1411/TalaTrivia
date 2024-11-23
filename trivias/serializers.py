# trivias/serializers.py
from rest_framework import serializers
from .models import Trivia
from users.serializers import UserSerializer
from questions.serializers import QuestionSerializer

class TriviaSerializer(serializers.ModelSerializer):
    users = UserSerializer(many=True)
    questions = QuestionSerializer(many=True)

    class Meta:
        model = Trivia
        fields = ['id', 'name', 'description', 'users', 'questions']
