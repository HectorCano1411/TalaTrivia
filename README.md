# TalaTrivia: API para un Juego de Preguntas y Respuestas

## Descripción
TalaTrivia es un juego de preguntas y respuestas enfocado en temas de recursos humanos, donde los usuarios compiten respondiendo preguntas de trivias para obtener el mayor puntaje posible. La API proporciona las funcionalidades necesarias para gestionar usuarios, preguntas, trivias y rankings.

---

## Funcionalidades Principales

### Gestión de Usuarios
- Crear y listar usuarios con atributos como ID, nombre y correo electrónico.

### Gestión de Preguntas
- Crear y listar preguntas con múltiples opciones de respuesta (solo una correcta).
- Clasificación de preguntas por niveles de dificultad: fácil, medio y difícil, con puntajes diferenciados.

### Gestión de Trivias
- Crear trivias con nombre, descripción, selección de preguntas y asignación de usuarios participantes.

### Participación en Trivias
- Permitir a los usuarios responder preguntas de las trivias asignadas.
- Validar respuestas y calcular puntajes finales en base a respuestas correctas.

### Ranking de Usuarios
- Generar rankings basados en los puntajes obtenidos en trivias específicas.

---

## Configuración del Proyecto

### Tecnologías Utilizadas
- **Backend**: Python (Django, Django REST Framework)
- **Base de Datos**: PostgreSQL
- **Contenedores**: Docker y Docker Compose
- **Documentación API**: Swagger y Redoc

---

## Implementación con Docker

### Requisitos Previos
1. Tener Docker y Docker Compose instalados.
2. Clonar el repositorio del proyecto:
3. Cargar scripts de base de datos
4. Utilizar documentación Swagger o Redoc para comenzar a probar los endponits

## Iniciar el Proyecto

Ejecuta el siguiente comando para iniciar los contenedores:

-docker-compose up --build
docker-compose up --build -d

### Accede a las siguientes URLs:

- **API Backend:** [http://localhost:8000](http://localhost:8000)

- **Documentación Swagger:** [http://localhost:8000/swagger/](http://localhost:8000/swagger/)

- **Documentación Redoc:** [http://localhost:8000/redoc/](http://localhost:8000/redoc/)

- **pgAdmin:** [http://localhost:5050](http://localhost:5050)



# Instrucciones para Trabajar con la API

Para interactuar con esta API, se recomienda utilizar **Postman**, aprovechando las librerías Swagger o Redoc para probar los endpoints y explorar las funcionalidades disponibles.

---

## Pasos Iniciales

### 1. Crear un Usuario

Primero, es necesario registrar un usuario para poder probar los endpoints.

**Endpoint:**  
- **Método:** `POST`  
- **URL:** `http://localhost:8000/api/users/register/`

**Cuerpo de la solicitud (JSON):**
```
{
  "username": "prueba",
  "email": "user@example.com",
  "password": "prueba987",
  "is_staff": true,
  "is_superuser": true
}
```

## 2. Generar un Token de Acceso

### Endpoint para Generar Token:

- **Método:** `POST`
- **URL:** `http://localhost:8000/api/token/`

---

### Encabezado (Header):

-Content type
-application/json

**Cuerpo de la solicitud (JSON):**
```
{
  "username": "prueba",
  "password": "prueba987"
}
```

-Despues de generar el toke es posible comenzar a interactuar con los demas endpoint de la API.

-Es necesario incorporar el token que entrega como access en Autorization y seleccionar Bearer Token e ingresar en la casilla correspondiente.

-Ejemplo de respuesta del token:

```
{
    "refresh": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjY1NzE3NCwiaWF0IjoxNzMyNTcwNzc0LCJqdGkiOiIwYzQ4NjkwZTAzOGQ0Mjk2YjdkMTcyOWE1OGQ0N2Q2YiIsInVzZXJfaWQiOjF9.8zdvfyM3EFhd3q8ToyQnEmzwuBawS7O78lhvb5FhqO4",
    "access": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMyNTcyNTc0LCJpYXQiOjE3MzI1NzA3NzQsImp0aSI6ImY5MzkzZTYzMTU1NTRmMmNhODBmNzY2ODYyMWYxZjIzIiwidXNlcl9pZCI6MX0.K0z35E-N53zIKwyEnm7WQGMc5NvAnwIjTlnK6Tbrtrw"
}
```

# Instrucciones para La Base de datos

-Se dejan como recursos dos archivos con preguntas y trivias para poder inserta mediante Postgresql


# Conéctate al contenedor de Docker donde se ejecuta Django
docker exec -it tala_trivia-web-1 bash

# Realiza las migraciones para la app 'users'
python manage.py makemigrations users
# Si no hay cambios, muestra "No changes detected in app 'users'"

python manage.py migrate users
# Si ya no hay migraciones pendientes, muestra "No migrations to apply."

# Realiza las migraciones para la app 'questions'
python manage.py makemigrations questions
# Si no hay cambios, muestra "No changes detected in app 'questions'"

python manage.py migrate questions
# Si ya no hay migraciones pendientes, muestra "No migrations to apply."

# Realiza las migraciones para la app 'trivias'
python manage.py makemigrations trivias
# Si no hay cambios, muestra "No changes detected in app 'trivias'"

python manage.py migrate trivias
# Si ya no hay migraciones pendientes, muestra "No migrations to apply."

# Realiza las migraciones para la app 'ranking'
python manage.py makemigrations ranking
# Si no hay cambios, muestra "No changes detected in app 'ranking'"

python manage.py migrate ranking
# Si ya no hay migraciones pendientes, muestra "No migrations to apply."

# Crear superusuario para Administrador de Django

-Ademas se deja archivo en el repositorio para la configuracioon de paAdmin 4

-python manage.py createsuperuser
-Username: admin
-Email address: admin@admin.com
-Password:
-Password (again):
# El sistema podría mostrar algunos errores relacionados con la seguridad de la contraseña:
# - "The password is too similar to the username."
# - "This password is too short. It must contain at least 8 characters."
# - "This password is too common."

-Bypass password validation and create user anyway? [y/N]: y
-Superuser created successfully.



