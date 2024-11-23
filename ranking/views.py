from django.shortcuts import render

# Create your views here.
# ranking/views.py
from rest_framework import viewsets
from .models import Ranking
from .serializers import RankingSerializer

class RankingViewSet(viewsets.ModelViewSet):
    queryset = Ranking.objects.all()
    serializer_class = RankingSerializer
