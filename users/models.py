from django.contrib.auth.models import AbstractUser, Group, Permission
from django.db import models

class CustomUser(AbstractUser):
    # Define related_name para evitar conflictos
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
        group, created = Group.objects.get_or_create(name=role_name)
        self.groups.add(group)
        self.save()
    ROLE_CHOICES = (
        ('admin', 'Admin'),
        ('jugador', 'Jugador'),
    )
    role = models.CharField(max_length=10, choices=ROLE_CHOICES, default='jugador')
    
    def assign_role(self, role_name):
        """Asigna un rol (grupo) al usuario."""
        # Obtener o crear el grupo basado en el nombre del rol
        group, created = Group.objects.get_or_create(name=role_name)
        # Asignar el grupo al usuario
        self.groups.add(group)
        self.role = role_name  # Sincroniza el campo role
        self.save()

    def is_admin(self):
        """Verifica si el usuario tiene el rol de admin."""
        return self.role == 'admin'

    def is_jugador(self):
        """Verifica si el usuario tiene el rol de jugador."""
        return self.role == 'jugador'