from django.contrib.auth.models import AbstractUser, Group, Permission
from django.db import models

class CustomUser(AbstractUser):
    role = models.CharField(max_length=20, null=True, blank=True, default='jugador')
    groups = models.ManyToManyField(
        Group,
        related_name="customuser_set",  # Cambiar a algo único
        blank=True,
        help_text="The groups this user belongs to.",
        verbose_name="groups",
    )
    user_permissions = models.ManyToManyField(
        Permission,
        related_name="customuser_permissions",  # Cambiar a algo único
        blank=True,
        help_text="Specific permissions for this user.",
        verbose_name="user permissions",
    )

    def assign_role(self, role_name):
        """Asigna un rol (grupo) al usuario."""
        # Obtener o crear el grupo basado en el nombre del rol
        group, created = Group.objects.get_or_create(name=role_name)
        # Asignar el grupo al usuario
        self.groups.add(group)
        self.role = role_name  # Asignamos el rol al campo 'role'
        self.save()

    def is_admin(self):
        """Verifica si el usuario tiene el rol de admin."""
        return self.groups.filter(name='admin').exists()

    def is_jugador(self):
        """Verifica si el usuario tiene el rol de jugador."""
        return self.groups.filter(name='jugador').exists()
