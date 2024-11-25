from rest_framework import permissions

class IsAdminUserOrCreatorOrReadOnly(permissions.BasePermission):
    """
    Permiso personalizado que permite que los administradores y creadores de la participación puedan editarla.
    Los usuarios normales solo pueden realizar operaciones de lectura.
    """

    def has_permission(self, request, view):
        # Si el método es SAFE_METHODS (lectura), se permite a todos los usuarios
        if request.method in permissions.SAFE_METHODS:
            return True
        
        # Verificar si el usuario está autenticado y tiene privilegios para modificar
        if request.user.is_staff:
            return True  # Los administradores pueden hacer cualquier cosa

        # Si es un método de escritura (POST, PUT, DELETE), comprobamos el creador de la participación
        if request.method == 'POST':
            return True  # Permitir crear una nueva participación

        # Si no es administrador, solo el creador puede modificar la participación
        return False

    def has_object_permission(self, request, view, obj):
        """
        Verifica si el usuario tiene permiso para ver o modificar un objeto específico de 'participation'.
        """
        # Si el usuario es administrador o creador de la participación, permitimos la acción
        return request.user.is_staff or obj.user == request.user
