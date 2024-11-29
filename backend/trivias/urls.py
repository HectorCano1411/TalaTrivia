# trivias/urls.py
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from . import views
from .views import ParticipationViewSet

# Configura el router para las vistas del ViewSet de 'trivias'
router = DefaultRouter()
router.register(r'trivias', views.TriviaViewSet)

# Configura el router para las vistas del ViewSet de 'participations'
router.register(r'participations', ParticipationViewSet)

urlpatterns = [
    # Incluye las rutas generadas por el router
    path('', include(router.urls)),  # Esto incluirá las rutas del ViewSet automáticamente
    
    
    # path('redirect-to-trivias/', views.trivias_redirect, name='trivias-redirect'),

]

