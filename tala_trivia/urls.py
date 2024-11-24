# tala_trivia/urls.py
from django.contrib import admin
from django.urls import path, include
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from rest_framework import permissions
from drf_yasg.views import get_schema_view # type: ignore
from drf_yasg import openapi # type: ignore

# Definir la vista del esquema Swagger
schema_view = get_schema_view(
   openapi.Info(
      title="Tala Trivia API",
      default_version='v1',
      description="Documentación de la API de Tala Trivia",
      terms_of_service="https://www.google.com/policies/terms/",
      contact=openapi.Contact(email="contact@tala_trivia.local"),
      license=openapi.License(name="MIT License"),
   ),
   public=True,
   permission_classes=(permissions.AllowAny,),
)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('api/users/', include('users.urls')),  # Incluir las rutas de usuarios
    path('questions/', include('questions.urls')),  # Incluir las rutas de preguntas
    path('api/', include('trivias.urls')),  # Incluir las URLs de la aplicación 'trivias'

    
    # Agregar la ruta de Swagger para la documentación interactiva
    path('swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    
    # Si prefieres la documentación en formato ReDoc, también puedes agregarla:
    path('redoc/', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),
]

# # tala_trivia/urls.py (o el archivo `urls.py` principal de tu proyecto)
# from django.contrib import admin
# from django.urls import path, include
# from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView

# urlpatterns = [
#     path('admin/', admin.site.urls),
#     path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
#     path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
#     path('api/users/', include('users.urls')),  # Asegúrate de incluir esta línea
#     path('questions/', include('questions.urls')),  # Asegúrate de incluir esta línea
# ]

