from django.db import models

# Create your models here.
# questions/models.py

from django.db import models

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
    
    def __str__(self):
        return self.question_text
