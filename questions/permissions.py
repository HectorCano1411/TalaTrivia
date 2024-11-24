from rest_framework.permissions import BasePermission

class IsAdminOrReadOnly(BasePermission):
    """
    Permiso personalizado que solo permite modificar preguntas a los administradores,
    pero permite verlas a cualquier usuario autenticado.
    """
    def has_permission(self, request, view):
        # Los métodos de solo lectura (GET) están permitidos para cualquier usuario autenticado
        if request.method in ['GET', 'HEAD', 'OPTIONS']:
            return True
        
        # Los métodos de modificación (POST, PUT, DELETE) solo están permitidos para administradores
        return request.user.is_staff or request.user.is_superuser
