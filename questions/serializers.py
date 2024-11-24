# questions/serializers.py
from rest_framework import serializers
from .models import Question

class QuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Question
        fields = ['id', 'question_text', 'level', 'options', 'correct_answer']
    
    def to_representation(self, instance):
        """
        Excluye el campo 'correct_answer' si el usuario no es administrador.
        """
        representation = super().to_representation(instance)
        user = self.context['request'].user
        if not (user.is_staff or user.is_superuser):
            representation.pop('correct_answer')
        return representation
