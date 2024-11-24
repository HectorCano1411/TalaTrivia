
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
