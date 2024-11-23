from django.contrib import admin
from django.contrib.auth import get_user_model
from django.contrib.auth.models import Group, Permission
from django.contrib.auth.admin import UserAdmin
from .models import CustomUser

# Definir un formulario de usuario personalizado si deseas personalizar la interfaz de edición de usuarios
from django import forms

class CustomUserChangeForm(forms.ModelForm):
    class Meta:
        model = CustomUser
        fields = ('username', 'first_name', 'last_name', 'email', 'is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')

class CustomUserCreationForm(forms.ModelForm):
    class Meta:
        model = CustomUser
        fields = ('username', 'first_name', 'last_name', 'email', 'password')

# Personalizar la visualización y administración del usuario personalizado
class CustomUserAdmin(UserAdmin):
    # Establecer el formulario de cambio de usuario y creación de usuario
    form = CustomUserChangeForm
    add_form = CustomUserCreationForm

    # Especificar qué campos se mostrarán en la lista de usuarios
    list_display = ('username', 'first_name', 'last_name', 'email', 'is_active', 'is_staff', 'is_superuser')
    list_filter = ('is_active', 'is_staff', 'is_superuser', 'groups')

    # Los campos que se mostrarán en el formulario de detalles del usuario
    fieldsets = (
        (None, {'fields': ('username', 'password')}),
        ('Personal info', {'fields': ('first_name', 'last_name', 'email')}),
        ('Permissions', {'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')}),
        ('Important dates', {'fields': ('last_login', 'date_joined')}),
    )
    # Los campos que se mostrarán en el formulario de creación de usuario
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('username', 'first_name', 'last_name', 'email', 'password1', 'password2'),
        }),
    )
    search_fields = ('username', 'first_name', 'last_name', 'email')
    ordering = ('username',)

# Registrar el modelo personalizado de usuario con la administración de Django
admin.site.register(CustomUser, CustomUserAdmin)

# Opcional: Registra el modelo de Grupo y Permiso si deseas personalizar su administración también
admin.site.unregister(Group)  # Si deseas desregistrar el Grupo predeterminado
admin.site.register(Group)  # Si quieres hacerlo accesible para personalizar la gestión de grupos

# También puedes registrar permisos adicionales si necesitas manejarlos específicamente
admin.site.register(Permission)
