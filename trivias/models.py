# trivias/models.py
from django.contrib.auth import get_user_model
from django.db import models
from users.models import CustomUser
from questions.models import Question

class Trivia(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    users = models.ManyToManyField(CustomUser, related_name='trivias')
    questions = models.ManyToManyField(Question, related_name='trivias')
    creator = models.ForeignKey(CustomUser, on_delete=models.CASCADE, default=1)
    created_at = models.DateTimeField(auto_now_add=True)  # Solo auto_now_add
    
    def __str__(self):
        return self.name

# Usamos el CustomUser definido
CustomUser = get_user_model()

class Participation(models.Model):
    trivia = models.ForeignKey(Trivia, related_name='participations', on_delete=models.CASCADE)
    user = models.ForeignKey(CustomUser, related_name='participations', on_delete=models.CASCADE)  # Usamos CustomUser
    answers = models.JSONField()  # Almacenar las respuestas como un diccionario JSON
    score = models.IntegerField(default=0)  # Puntaje obtenido por el usuario

    def calculate_score(self):
        """
        Calcula el puntaje total basado en las respuestas y la dificultad de las preguntas.
        - 1 punto para preguntas fáciles
        - 2 puntos para preguntas medianas
        - 3 puntos para preguntas difíciles
        """
        total_score = 0

        # Iterar sobre las respuestas proporcionadas
        for question_id, answer in self.answers.items():
            try:
                question = Question.objects.get(id=question_id)
            except Question.DoesNotExist:
                continue  # Si no se encuentra la pregunta, se omite

            # Verificar si la respuesta es correcta
            if question.correct_answer == answer:
                # Calcular puntaje según la dificultad de la pregunta
                if question.level == 'easy':
                    total_score += 1
                elif question.level == 'medium':
                    total_score += 2
                elif question.level == 'hard':
                    total_score += 3

        # Asignar el puntaje total y guardar la participación
        self.score = total_score
        self.save()

    def __str__(self):
        return f"Participation of {self.user.username} in Trivia {self.trivia.name} - Score: {self.score}"

    class Meta:
        verbose_name = 'Participation'
        verbose_name_plural = 'Participations'
