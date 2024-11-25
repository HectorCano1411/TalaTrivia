
from rest_framework import viewsets
from .serializers import RankingSerializer
from rest_framework.decorators import action
from rest_framework.response import Response
from .models import Ranking

class RankingViewSet(viewsets.ModelViewSet):
    queryset = Ranking.objects.all()
    serializer_class = RankingSerializer

    @action(detail=True, methods=['get'])
    def get_ranking(self, request, pk=None):
        trivia = self.get_object()
        rankings = Ranking.objects.filter(trivia=trivia).order_by('-score')
        serializer = RankingSerializer(rankings, many=True)
        return Response(serializer.data)

from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework import status, viewsets
from .models import Participation
from .serializers import ParticipationSerializer

class ParticipationViewSet(viewsets.ModelViewSet):
    queryset = Participation.objects.all()
    serializer_class = ParticipationSerializer

    # Otras vistas existentes...

    @action(detail=True, methods=['get'])
    def ranking(self, request, pk=None):
        """
        Obtiene el ranking de usuarios de una trivia específica, ordenado por puntaje.
        """
        # Asegurarnos de que se está pasando un ID de trivia válido
        try:
            trivia_id = pk
            participations = Participation.objects.filter(trivia__id=trivia_id).order_by('-score')
            
            # Serializamos las participaciones
            serializer = ParticipationSerializer(participations, many=True)
            
            # Creamos un ranking basado en los puntajes
            ranking = [
                {
                    "user": participation.user.username,
                    "score": participation.score
                }
                for participation in participations
            ]
            
            return Response(ranking, status=status.HTTP_200_OK)
        
        except Participation.DoesNotExist:
            return Response({"detail": "No hay participaciones para esta trivia."}, status=status.HTTP_404_NOT_FOUND)
