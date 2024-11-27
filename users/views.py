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
from drf_yasg import openapi  # type: ignore
from .models import CustomUser
from .serializers import UserSerializer
from django.views.generic import TemplateView
from rest_framework import status, permissions
from rest_framework import serializers
from django.http import JsonResponse

class HomeView(TemplateView):
    """Página de inicio"""

    template_name = "home.html"

    @swagger_auto_schema(
        operation_description="Mostrar la página de inicio",
        responses={200: "Página de inicio cargada correctamente"}
    )
    def get(self, request, *args, **kwargs):
        return super().get(request, *args, **kwargs)


class UserViewSet(viewsets.ModelViewSet):
    """Gestionar usuarios"""
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer
    permission_classes = [IsAuthenticated]

    @swagger_auto_schema(
        operation_description="Operaciones CRUD para gestionar usuarios",
        responses={
            200: UserSerializer(many=True),
            201: UserSerializer,
            204: "Usuario eliminado"
        }
    )
    def list(self, request, *args, **kwargs):
        """Listar todos los usuarios"""
        return super().list(request, *args, **kwargs)

    @swagger_auto_schema(
        operation_description="Crear un nuevo usuario",
        request_body=UserSerializer,
        responses={201: UserSerializer}
    )
    def create(self, request, *args, **kwargs):
        """Crear un nuevo usuario"""
        return super().create(request, *args, **kwargs)

class UserListView(APIView):
    """Listar todos los usuarios"""
    permission_classes = [IsAuthenticated]

    @swagger_auto_schema(
        operation_description="Obtiene la lista de usuarios",
        responses={200: UserSerializer(many=True)}
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
        responses={200: UserSerializer()}
    )
    def patch(self, request, *args, **kwargs):
        return super().patch(request, *args, **kwargs)


class UserDeleteView(DestroyAPIView):
    """Eliminar un usuario"""
    queryset = CustomUser.objects.all()
    permission_classes = [permissions.IsAuthenticated, IsAdminOrSelf]

    @swagger_auto_schema(
        operation_description="Eliminar un usuario por ID",
        responses={204: "Usuario eliminado con éxito"}
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
        # Validaciones y creación del usuario
        required_fields = ['username', 'email', 'password']
        for field in required_fields:
            if field not in request.data:
                return Response(
                    {'error': f"El campo {field} es obligatorio."},
                    status=status.HTTP_400_BAD_REQUEST
                )

        # Validar correo electrónico
        email = request.data.get('email')
        if not email or '@' not in email:
            return Response(
                {'error': "El correo electrónico no tiene un formato válido."},
                status=status.HTTP_400_BAD_REQUEST
            )

        # Validar contraseña
        password = request.data.get('password')
        if len(password) < 8:
            return Response(
                {'error': "La contraseña debe tener al menos 8 caracteres."},
                status=status.HTTP_400_BAD_REQUEST
            )

        # Validar si el nombre de usuario o el correo electrónico ya existen
        username = request.data.get('username')
        if CustomUser.objects.filter(username=username).exists():
            return Response(
                {'error': "El nombre de usuario ya está en uso."},
                status=status.HTTP_400_BAD_REQUEST
            )

        if CustomUser.objects.filter(email=email).exists():
            return Response(
                {'error': "El correo electrónico ya está registrado."},
                status=status.HTTP_400_BAD_REQUEST
            )

        # Obtener el rol de los datos de la solicitud, por defecto será 'jugador'
        role = request.data.get('role', 'jugador')  # Asignamos un rol por defecto

        # Validar que el rol sea uno de los permitidos
        if role not in ['admin', 'jugador']:
            return Response(
                {'error': "El rol debe ser 'admin' o 'jugador'."},
                status=status.HTTP_400_BAD_REQUEST
            )

        # Crear el usuario con el serializador
        serializer = UserSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)  # Lanzará excepción si los datos son inválidos
        user = serializer.save()

        # Asignar el rol recibido
        user.assign_role(role)  # Asignamos el rol recibido ('admin' o 'jugador')
        user.save()

        return Response({"message": "Usuario creado con éxito."}, status=status.HTTP_201_CREATED)

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
                        "role": "admin"  # Aquí agregamos el rol
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
            return JsonResponse({
                'refresh': str(refresh),
                'access': str(refresh.access_token),
                'role': user.role,  # Devolvemos el rol del usuario
                'redirect_url': 'http://localhost:8000/api/trivias/'  # Redirige a la página de trivias después del login
            })
        return Response({'detail': 'Invalid credentials'}, status=status.HTTP_400_BAD_REQUEST)








