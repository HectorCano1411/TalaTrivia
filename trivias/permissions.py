from rest_framework import permissions

class IsAdminUserOrCreatorOrReadOnly(permissions.BasePermission):
    """
    Permiso personalizado que permite que los administradores y creadores de la trivia puedan editarla.
    Los usuarios normales solo pueden realizar operaciones de lectura.
    """

    def has_permission(self, request, view):
        trivia = view.get_object() if hasattr(view, 'get_object') else None
        
        # Si el usuario es administrador o creador de la trivia, permitir edición
        if request.user and (request.user.is_staff or request.user == trivia.creator):
            return True
        elif request.method in permissions.SAFE_METHODS:
            return True  # Métodos seguros (GET, HEAD, OPTIONS) son permitidos para todos
        return False
