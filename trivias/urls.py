# # trivias/urls.py
# from django.urls import path
# from .views import TriviaListView, TriviaDetailView, TriviaCreateView, TriviaEditView, TriviaDeleteView

# urlpatterns = [
#     path('trivias/', TriviaListView.as_view(), name='trivia-list'),  # Listar todas las trivias
#     path('trivias/<int:pk>/', TriviaDetailView.as_view(), name='trivia-detail'),  # Detalle de una trivia
#     path('trivias/create/', TriviaCreateView.as_view(), name='trivia-create'),  # Crear una nueva trivia
#     path('trivias/<int:pk>/edit/', TriviaEditView.as_view(), name='trivia-edit'),  # Editar una trivia
#     path('trivias/<int:pk>/delete/', TriviaDeleteView.as_view(), name='trivia-delete'),  # Eliminar una trivia
# ]
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from . import views

# Configura el router para las vistas del ViewSet
router = DefaultRouter()
router.register(r'trivias', views.TriviaViewSet)

urlpatterns = [
    # Incluye las rutas generadas por el router
    path('', include(router.urls)),  # Esto incluirá las rutas del ViewSet automáticamente
]

