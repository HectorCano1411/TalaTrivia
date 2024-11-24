# questions/serializers.py
from rest_framework import serializers
from .models import Question
class QuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Question
        fields = ['id', 'question_text', 'level', 'options']
        # Excluimos 'correct_answer' para no mostrarlo en el API
