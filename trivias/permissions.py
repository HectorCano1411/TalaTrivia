# trivias/permissions.py
from rest_framework import permissions

class IsAdminUserOrReadOnly(permissions.BasePermission):
    """
    Permiso personalizado que solo permite que los administradores
    puedan realizar operaciones de escritura (POST, PUT, DELETE).
    Los usuarios normales solo pueden realizar operaciones de lectura (GET).
    """

    def has_permission(self, request, view):
        # Verificar si el usuario es administrador
        if request.user and request.user.is_staff:
            return True  # Administradores tienen todos los permisos
        elif request.method in permissions.SAFE_METHODS:
            return True  # Métodos seguros (GET, HEAD, OPTIONS) son permitidos para todos
        return False  # Los demás usuarios no pueden modificar
