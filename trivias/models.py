# trivias/models.py
# Create your models here.
# trivias/models.py
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


class Participation(models.Model):
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
    trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)
    answers = models.JSONField()  # Almacena las respuestas del usuario
    score = models.IntegerField(default=0)

    def calculate_score(self):
        total_score = 0
        for question_id, answer in self.answers.items():
            question = Question.objects.get(id=question_id)
            if question.correct_answer == answer:
                if question.level == 'easy':
                    total_score += 1
                elif question.level == 'medium':
                    total_score += 2
                elif question.level == 'hard':
                    total_score += 3
        self.score = total_score
        self.save()
