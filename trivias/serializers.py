from rest_framework import serializers
from .models import Trivia
from users.models import CustomUser
from questions.models import Question
from .models import Participation

class TriviaSerializer(serializers.ModelSerializer):
    users = serializers.PrimaryKeyRelatedField(
        many=True,
        queryset=CustomUser.objects.all(),
        write_only=True
    )
    questions = serializers.PrimaryKeyRelatedField(
        many=True,
        queryset=Question.objects.all(),
        write_only=True
    )
    creator = serializers.PrimaryKeyRelatedField(
        queryset=CustomUser.objects.all()
    )

    # Para la representación (lectura)
    users_details = serializers.SerializerMethodField()
    questions_details = serializers.SerializerMethodField()

    class Meta:
        model = Trivia
        fields = ['id', 'name', 'description', 'users', 'users_details', 'questions', 'questions_details', 'creator']
        extra_kwargs = {
            'creator': {'required': True}
        }

    def get_users_details(self, obj):
        """Representación detallada de usuarios"""
        return [{"id": user.id, "username": user.username, "email": user.email} for user in obj.users.all()]

    def get_questions_details(self, obj):
        """Representación detallada de preguntas"""
        return [{"id": question.id, "question_text": question.question_text, "level": question.level} for question in obj.questions.all()]

    def create(self, validated_data):
        users = validated_data.pop('users', [])
        questions = validated_data.pop('questions', [])
        trivia = Trivia.objects.create(**validated_data)
        trivia.users.set(users)  # Asignar usuarios
        trivia.questions.set(questions)  # Asignar preguntas
        return trivia

    def update(self, instance, validated_data):
        users = validated_data.pop('users', [])
        questions = validated_data.pop('questions', [])
        for attr, value in validated_data.items():
            setattr(instance, attr, value)
        instance.save()
        instance.users.set(users)  # Actualizar usuarios
        instance.questions.set(questions)  # Actualizar preguntas
        return instance



class ParticipationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Participation
        fields = ['id', 'trivia', 'user', 'answers', 'score']
    
    def validate(self, data):
        # Validar que el usuario no participe más de una vez en la misma trivia
        if Participation.objects.filter(user=data['user'], trivia=data['trivia']).exists():
            raise serializers.ValidationError("Ya participaste en esta trivia.")
        return data
