# questions/models.py
from django.db import models
from django.core.exceptions import ValidationError

class Question(models.Model):
    DIFFICULTY_CHOICES = [
        ('easy', 'Easy'),
        ('medium', 'Medium'),
        ('hard', 'Hard'),
    ]
    question_text = models.CharField(max_length=255)
    level = models.CharField(choices=DIFFICULTY_CHOICES, max_length=10)
    options = models.JSONField()  # JSON to store multiple options
    correct_answer = models.CharField(max_length=255)

    def clean(self):
        # Validar que la respuesta correcta está dentro de las opciones
        if self.correct_answer not in self.options.values():
            raise ValidationError("The correct answer must be one of the provided options.")
        
        # Validar que haya exactamente una respuesta correcta
        correct_answers = [key for key, value in self.options.items() if value == self.correct_answer]
        if len(correct_answers) != 1:
            raise ValidationError("There must be exactly one correct answer in the options.")

    def get_score(self):
        """Calcula el puntaje según el nivel de dificultad."""
        scores = {'easy': 1, 'medium': 2, 'hard': 3}
        return scores.get(self.level, 0)

    def __str__(self):
        return self.question_text
