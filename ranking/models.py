# Create your models here.
# ranking/models.py

from django.db import models
from users.models import CustomUser
from trivias.models import Trivia

class Ranking(models.Model):
    trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
    score = models.IntegerField()

    class Meta:
        ordering = ['-score']  # Highest score first
