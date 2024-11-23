from django.shortcuts import render

# Create your views here.
# trivias/views.py
from rest_framework import viewsets
from .models import Trivia
from .serializers import TriviaSerializer

class TriviaViewSet(viewsets.ModelViewSet):
    queryset = Trivia.objects.all()
    serializer_class = TriviaSerializer
