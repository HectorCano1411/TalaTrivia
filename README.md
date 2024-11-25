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

### Accede a las siguientes URLs:

- **API Backend:** [http://localhost:8000](http://localhost:8000)

- **Documentación Swagger:** [http://localhost:8000/swagger/](http://localhost:8000/swagger/)

- **Documentación Redoc:** [http://localhost:8000/redoc/](http://localhost:8000/redoc/)

- **pgAdmin:** [http://localhost:5050](http://localhost:5050)

