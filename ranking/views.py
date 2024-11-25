from argparse import Action
from drf_yasg.utils import swagger_auto_schema # type: ignore
from rest_framework import viewsets
from rest_framework.response import Response
from django.shortcuts import get_object_or_404
from .serializers import RankingSerializer
from .models import Ranking, Trivia

class RankingViewSet(viewsets.ModelViewSet):
    queryset = Ranking.objects.all()
    serializer_class = RankingSerializer

    @swagger_auto_schema(
        tags=['Rankings'],  # Usa 'Rankings' como tag
        operation_description="Obtiene el ranking de una trivia específica, ordenado por puntajes."
    )
    def get_ranking(self, request, pk=None):
        """
        Obtiene el ranking de una trivia específica, ordenado por puntajes.
        """
        trivia = get_object_or_404(Trivia, pk=pk)
        rankings = Ranking.objects.filter(trivia=trivia).order_by('-score')
        
        # Serializar los rankings filtrados
        serializer = RankingSerializer(rankings, many=True)
        
        # Responder con los datos serializados
        return Response(serializer.data)

    @swagger_auto_schema(
        tags=['Rankings'],  # Usa 'Rankings' como tag
        operation_description="Obtiene el ranking global de todas las trivias, ordenado por puntajes."
    )
    def get_all_rankings(self, request):
        """
        Obtiene el ranking global de todas las trivias, ordenado por puntajes.
        """
        rankings = Ranking.objects.all().order_by('-score')
        
        # Serializar todos los rankings
        serializer = RankingSerializer(rankings, many=True)
        
        # Responder con los rankings de todas las trivias
        return Response(serializer.data)
