from rest_framework import viewsets, status, permissions, generics
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework_simplejwt.tokens import RefreshToken
from django.contrib.auth import get_user_model
from rest_framework.permissions import IsAuthenticated
from rest_framework.generics import UpdateAPIView, DestroyAPIView
from rest_framework.exceptions import PermissionDenied
from rest_framework.decorators import api_view
from drf_yasg.utils import swagger_auto_schema # type: ignore
from drf_yasg import openapi # type: ignore
from .models import CustomUser
from .serializers import UserSerializer


class UserViewSet(viewsets.ModelViewSet):
    """Gestionar usuarios"""
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer
    permission_classes = [IsAuthenticated]


class UserListView(APIView):
    """Listar todos los usuarios"""
    permission_classes = [IsAuthenticated]

    @swagger_auto_schema(
        operation_description="Obtiene la lista de usuarios",
        responses={200: UserSerializer(many=True)},
    )
    def get(self, request, format=None):
        users = CustomUser.objects.all()
        serializer = UserSerializer(users, many=True)
        return Response(serializer.data)


# Permiso personalizado para permitir edición/eliminación solo si el usuario es administrador o el propio usuario
class IsAdminOrSelf(permissions.BasePermission):
    def has_permission(self, request, view):
        if request.user.is_superuser:
            return True
        # Permite si el usuario autenticado es el mismo que el que quiere editar/eliminar
        return request.user.id == view.kwargs['pk']


class UserEditView(UpdateAPIView):
    """Editar un usuario"""
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated, IsAdminOrSelf]

    @swagger_auto_schema(
        operation_description="Editar un usuario por ID",
        responses={200: UserSerializer()},
    )
    def patch(self, request, *args, **kwargs):
        return super().patch(request, *args, **kwargs)


class UserDeleteView(DestroyAPIView):
    """Eliminar un usuario"""
    queryset = CustomUser.objects.all()
    permission_classes = [permissions.IsAuthenticated, IsAdminOrSelf]

    @swagger_auto_schema(
        operation_description="Eliminar un usuario por ID",
        responses={204: "Usuario eliminado con éxito"},
    )
    def delete(self, request, *args, **kwargs):
        return super().delete(request, *args, **kwargs)


@swagger_auto_schema(
    method='delete',
    operation_description="Eliminar todos los usuarios excepto superusuario",
    responses={200: openapi.Response("Todos los usuarios han sido eliminados.")},
)
@api_view(['DELETE'])
def delete_all_users(request):
    if not request.user.is_superuser:
        raise PermissionDenied("Solo los superusuarios pueden eliminar todos los usuarios.")
    # Eliminar todos los usuarios excepto el superusuario
    CustomUser.objects.exclude(is_superuser=True).delete()
    return Response({"message": "Todos los usuarios han sido eliminados."})


class RegisterView(APIView):
    """Registrar un nuevo usuario"""
    permission_classes = [permissions.AllowAny]

    @swagger_auto_schema(
        operation_description="Registrar un usuario nuevo",
        request_body=UserSerializer,
        responses={201: openapi.Response("Usuario creado con éxito")},
    )
    def post(self, request):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.save()
            user.assign_role('Jugador')  # Por defecto, asignamos el rol 'Jugador'
            return Response({"message": "User created"}, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class LoginView(APIView):
    """Iniciar sesión"""
    permission_classes = [permissions.AllowAny]

    @swagger_auto_schema(
        operation_description="Iniciar sesión",
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties={
                'username': openapi.Schema(type=openapi.TYPE_STRING, description="Nombre de usuario"),
                'password': openapi.Schema(type=openapi.TYPE_STRING, description="Contraseña"),
            },
            required=['username', 'password'],
        ),
        responses={
            200: openapi.Response(
                "Tokens generados",
                examples={
                    "application/json": {
                        "refresh": "string_refresh_token",
                        "access": "string_access_token",
                    }
                },
            ),
            400: "Credenciales inválidas",
        },
    )
    def post(self, request):
        user = get_user_model().objects.filter(username=request.data.get('username')).first()
        if user and user.check_password(request.data.get('password')):
            refresh = RefreshToken.for_user(user)
            return Response({
                'refresh': str(refresh),
                'access': str(refresh.access_token),
            })
        return Response({'detail': 'Invalid credentials'}, status=status.HTTP_400_BAD_REQUEST)
