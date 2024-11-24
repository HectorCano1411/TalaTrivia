# URL Configuration
from django.contrib import admin
from django.urls import path, include
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from drf_yasg.views import get_schema_view # type: ignore
from drf_yasg import openapi # type: ignore
from rest_framework import permissions

from tala_trivia.views import ApiRootView

# Swagger view setup
schema_view = get_schema_view(
    openapi.Info(
        title="SimuladorERP API",
        default_version='v1',
        description="Documentación de las rutas de la API",
        terms_of_service="https://www.google.com/policies/terms/",
        contact=openapi.Contact(email="contact@simuladorerp.local"),
        license=openapi.License(name="BSD License"),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,),
)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('api/', include('users.urls')),      # Rutas de usuarios
    # path('api/', include('questions.urls')),  # Rutas de preguntas
    # path('api/', include('trivias.urls')),    # Rutas de trivias
    # path('api/', include('ranking.urls')),    # Rutas de rankings
    
    # Ruta para la documentación de la API (Swagger UI)
    path('swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    
    # Ruta para el API Root sin autenticación
    path('api/', ApiRootView.as_view(), name='api-root'),
]