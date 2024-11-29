import os
from django.core.management import call_command
from django.core.exceptions import ObjectDoesNotExist
import django
from users.models import CustomUser  # Asegúrate de importar CustomUser desde tu aplicación users

# Configuración del entorno de Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "tala_trivia.settings")
django.setup()

def create_superuser():
    try:
        # Verificar si ya existe el superusuario
        user = CustomUser.objects.get(username='admin')
        print(f"El superusuario 'admin' ya existe.")
    except CustomUser.DoesNotExist:
        # Crear el superusuario si no existe
        print("Creando superusuario 'admin'...")
        # Crear el superusuario sin contraseña
        call_command('createsuperuser', interactive=False, username='admin', email='admin@admin.com')
        
        # Buscar el superusuario recién creado
        user = CustomUser.objects.get(username='admin')
        user.set_password('admin1234')  # Establecer la contraseña manualmente
        user.save()  # Guardar los cambios

if __name__ == "__main__":
    create_superuser()
