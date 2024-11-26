from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import CustomUser

class CustomUserCreationForm(UserCreationForm):
    # Puedes personalizar aquí los campos del formulario de creación de usuario
    class Meta:
        model = CustomUser
        fields = ('username', 'first_name', 'last_name', 'email')  # Incluyendo username y email
