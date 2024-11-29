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


# Capturas de pantalla


## Encabezado de la API
![01-ApiSwagger](https://github.com/user-attachments/assets/be96a673-ce41-4ce0-b132-cb076aeb47d9)

## Cuerpo de la API

![02-ApiSwagger](https://github.com/user-attachments/assets/072439f8-4c14-4d45-a267-bb1c32ea4f65)

## Models de la API

![04-ApiSwagger](https://github.com/user-attachments/assets/38ab2d44-11c3-4f14-aa6b-40dea1fcc838)




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

# Configuración de PostgreSQL pgAdmin

![01-conf](https://github.com/user-attachments/assets/089c4a35-7674-4afe-8c73-3af990cd6e29)

![02-conf](https://github.com/user-attachments/assets/85e633ca-7358-4cff-acef-732fba968341)

![03-conf](https://github.com/user-attachments/assets/a67abbb5-ea82-4d96-a090-7398be0781cb)

![04-conf](https://github.com/user-attachments/assets/40c9a1ad-5515-4beb-a72e-aa195b141f6e)

![05-conf](https://github.com/user-attachments/assets/89f31dee-2891-4d7f-962a-49c6453b2309)

### Realizar las migraciones 

-python manage.py makemigrations  
-python manage.py migrate

### Api users:

-python manage.py makemigrations users  
-python manage.py migrate users  


### Api trivias:

-python manage.py makemigrations trivias  
-python manage.py migrate trivias


### Api questions:

-python manage.py makemigrations questions  
-python manage.py migrate questions


### Api ranking:

-python manage.py makemigrations ranking  
-python manage.py migrate ranking


### Crear superusuario 

![crearSuperUsuario](https://github.com/user-attachments/assets/60387ec1-228c-4b41-bf37-988585c917fd)

-Se dejan como recursos dos archivos con preguntas y trivias para poder inserta mediante Postgresql
