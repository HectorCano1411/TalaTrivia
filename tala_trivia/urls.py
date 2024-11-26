from django.contrib import admin
from django.urls import path, include
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from rest_framework import permissions
from drf_yasg.views import get_schema_view  # type: ignore
from drf_yasg import openapi  # type: ignore

# Configurar la vista del esquema Swagger
schema_view = get_schema_view(
    openapi.Info(
        title="Tala Trivia API",
        default_version="v1",
        description="Documentación de la API de Tala Trivia",
        terms_of_service="https://www.google.com/policies/terms/",
        contact=openapi.Contact(email="contact@tala_trivia.local"),
        license=openapi.License(name="MIT License"),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,),
)

urlpatterns = [
    # Admin
    path("admin/", admin.site.urls),
    
    # Root redirige a users.urls
    path("", include("users.urls")),  # Página de inicio

    # Auth (Login & Tokens)
    path(
        "api/token/",
        TokenObtainPairView.as_view(),
        name="token_obtain_pair",
    ),
    path(
        "api/token/refresh/",
        TokenRefreshView.as_view(),
        name="token_refresh",
    ),

    # App-specific routes
    path("api/users/", include("users.urls")),  # Users module
    path("api/questions/", include("questions.urls")),  # Questions module
    path("api/rankings/", include("ranking.urls")),  # Rankings module
    path("api/trivias/", include("trivias.urls")),  # Trivias module

    # Documentation
    path(
        "swagger/",
        schema_view.with_ui("swagger", cache_timeout=0),
        name="schema-swagger-ui",
    ),
    path(
        "redoc/",
        schema_view.with_ui("redoc", cache_timeout=0),
        name="schema-redoc",
    ),
]
from django.contrib import admin
from django.urls import path, include
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from rest_framework import permissions
from drf_yasg.views import get_schema_view  # type: ignore
from drf_yasg import openapi  # type: ignore

# Configurar la vista del esquema Swagger
schema_view = get_schema_view(
    openapi.Info(
        title="Tala Trivia API",
        default_version="v1",
        description="Documentación de la API de Tala Trivia",
        terms_of_service="https://www.google.com/policies/terms/",
        contact=openapi.Contact(email="contact@tala_trivia.local"),
        license=openapi.License(name="MIT License"),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,),
)

urlpatterns = [
    # Admin
    path("admin/", admin.site.urls),

    # Auth (Login & Tokens)
    path(
        "api/token/",
        TokenObtainPairView.as_view(),
        name="token_obtain_pair",
    ),
    path(
        "api/token/refresh/",
        TokenRefreshView.as_view(),
        name="token_refresh",
    ),

    # App-specific routes
    path("api/users/", include("users.urls")),  # Users module
    path("api/questions/", include("questions.urls")),  # Questions module
    path("api/rankings/", include("ranking.urls")),  # Rankings module
    path("api/trivias/", include("trivias.urls")),  # Trivias module

    # Documentation
    path(
        "swagger/",
        schema_view.with_ui("swagger", cache_timeout=0),
        name="schema-swagger-ui",
    ),
    path(
        "redoc/",
        schema_view.with_ui("redoc", cache_timeout=0),
        name="schema-redoc",
    ),
]
