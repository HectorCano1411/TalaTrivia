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
    
# from rest_framework import viewsets
# from rest_framework.decorators import action
# from rest_framework.response import Response
# from django.shortcuts import get_object_or_404
# from .serializers import RankingSerializer
# from .models import Ranking, Trivia  # Importa el modelo Trivia si es necesario

# class RankingViewSet(viewsets.ModelViewSet):
#     queryset = Ranking.objects.all()
#     serializer_class = RankingSerializer

#     @action(detail=True, methods=['get'])
#     def get_ranking(self, request, pk=None):
#         # Obtener la trivia relacionada utilizando el modelo Trivia
#         trivia = get_object_or_404(Trivia, pk=pk)  # `pk` se refiere al ID de la trivia en la URL
#         rankings = Ranking.objects.filter(trivia=trivia).order_by('-score')
        
#         # Serializar los rankings filtrados
#         serializer = RankingSerializer(rankings, many=True)
        
#         # Responder con los datos serializados
#         return Response(serializer.data)
    
#     # Nuevo endpoint para obtener el ranking de todas las trivias
#     @action(detail=False, methods=['get'])
#     def get_all_rankings(self, request):
#         # Obtener todos los rankings, sin filtrar por trivia
#         rankings = Ranking.objects.all().order_by('-score')
        
#         # Serializar todos los rankings
#         serializer = RankingSerializer(rankings, many=True)
        
#         # Responder con los rankings de todas las trivias
#         return Response(serializer.data)


# # from rest_framework import viewsets
# # from .serializers import RankingSerializer
# # from rest_framework.decorators import action
# # from rest_framework.response import Response
# # from .models import Ranking

# # class RankingViewSet(viewsets.ModelViewSet):
# #     queryset = Ranking.objects.all()
# #     serializer_class = RankingSerializer

# #     @action(detail=True, methods=['get'])
# #     def get_ranking(self, request, pk=None):
# #         trivia = self.get_object()  # Obtiene la trivia con pk
        
# #         # Filtros opcionales
# #         score_min = request.query_params.get('score_min')  # Filtro de puntaje mínimo
# #         user_id = request.query_params.get('user_id')  # Filtro por usuario
        
# #         # Filtrar por puntaje mínimo
# #         rankings = Ranking.objects.filter(trivia=trivia)
# #         if score_min:
# #             rankings = rankings.filter(score__gte=score_min)  # Filtra por puntaje mínimo

# #         # Filtrar por un usuario específico
# #         if user_id:
# #             rankings = rankings.filter(user_id=user_id)  # Filtra por ID de usuario

# #         # Ordenar por puntaje descendente (ya está por defecto, pero se puede cambiar)
# #         rankings = rankings.order_by('-score')
        
# #         serializer = RankingSerializer(rankings, many=True)
# #         return Response(serializer.data)
