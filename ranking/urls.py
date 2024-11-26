from django.urls import path, include
from rest_framework.routers import DefaultRouter
from ranking.views import RankingViewSet

router = DefaultRouter()
router.register(r'rankings', RankingViewSet, basename='ranking')  # Registro del ViewSet

urlpatterns = [
    path('api/', include(router.urls)),  # Incluye las rutas generadas por el enrutador
]
