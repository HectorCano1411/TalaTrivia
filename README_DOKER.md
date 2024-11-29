# TalaTrivia - Proyecto Dockerizado

## Este proyecto contiene la configuración necesaria para levantar los servicios de Django, PostgreSQL y PgAdmin dentro de contenedores Docker.

## Servicios

### 1. **Web (Django)**

- **Nombre del contenedor**: `talatrivia-web-1`
- **Descripción**: Contenedor que ejecuta el servidor de Django.
- **Puerto expuesto**: `8000`
- **Comando de inicio**: `./python manage.py runserver 0.0.0.0:8000`

### 2. **Base de Datos (PostgreSQL)**

- **Nombre del contenedor**: `talatrivia-db-1`
- **Descripción**: Contenedor que ejecuta la base de datos PostgreSQL.
- **Puerto expuesto**: `5432`
- **Credenciales**:
  - **Nombre de la base de datos**: `tala_trivia_db`
  - **Usuario**: `user`
  - **Contraseña**: `password`

### 3. **PgAdmin**

- **Nombre del contenedor**: `talatrivia-pgadmin-1`
- **Descripción**: Contenedor que ejecuta PgAdmin para gestionar la base de datos PostgreSQL a través de una interfaz web.
- **Puerto expuesto**: `5050`
- **Credenciales**:
  - **Email**: `admin@admin.com`
  - **Contraseña**: `admin`
- **Acceder a PgAdmin**: [http://localhost:5050](http://localhost:5050)

## Comandos Docker

### Levantar los contenedores

- Para levantar los contenedores en segundo plano, utiliza el siguiente comando:

```bash
docker-compose up -d
```

# Instrucciones para Docker en el Proyecto TalaTrivia

- Este archivo contiene los comandos necesarios para levantar, bajar y eliminar contenedores de Docker, así como acceder al bash de un contenedor.

## Comandos para interactuar con Docker

### 1. **Entrar al contenedor (bash)**

Para acceder al terminal de un contenedor en ejecución (como `talatrivia-web-1`), usa el siguiente comando:

```bash
docker exec -it talatrivia-web-1 bash
```
```bash
docker exec -it talatrivia-db-1 bash
```
```bash
docker exec -it talatrivia-pgadmin-1 bash
```

Este comando te permitirá ingresar al contenedor `talatrivia-web-1` en un terminal interactivo (bash). Si prefieres usar otro contenedor, reemplaza `talatrivia-web-1` por el nombre de otro contenedor (como `talatrivia-db-1` o `talatrivia-pgadmin-1`).

---

### 2. **Levantar los contenedores**

- Para levantar todos los contenedores definidos en tu archivo `docker-compose.yml`, usa:

```bash
docker-compose up -d
```

- El flag `-d` significa "detached", lo que indica que Docker ejecutará los contenedores en segundo plano.

- Si necesitas levantar un solo contenedor, puedes especificarlo así:

```bash
docker-compose up -d talatrivia-web-1
docker-compose up -d talatrivia-db-1
docker-compose up -d talatrivia-pgadmin-1
```

---

### 3. **Bajar los contenedores**

- Para detener los contenedores sin eliminar los volúmenes, usa:

```bash
docker-compose down
```

- Esto detendrá y eliminará los contenedores, pero **preservará los volúmenes** y las redes.

- Si también quieres eliminar los volúmenes asociados a los contenedores (por ejemplo, para borrar datos de la base de datos), usa:

```bash
docker-compose down -v
docker-compose down -v --rmi all

```

- El flag `-v` eliminará los volúmenes que se definieron en el archivo `docker-compose.yml`.

---

### 4. **Eliminar volúmenes manualmente**

- Si deseas eliminar volúmenes específicos de Docker (por ejemplo, los volúmenes asociados a la base de datos `postgres_data`), puedes usar el siguiente comando:

1. **Lista de volúmenes**:

```bash
docker volume ls
```

2. **Eliminar volumen específico** (reemplaza `nombre_del_volumen` con el volumen que deseas eliminar):

```bash
docker volume rm nombre_del_volumen
```

---

### 5. **Eliminar contenedores, imágenes y volúmenes**

- Si deseas eliminar todos los contenedores, imágenes y volúmenes no utilizados (lo que puede ser útil para limpiar el entorno), usa:

```bash
docker system prune -a --volumes
```

- Esto eliminará:

- Contenedores detenidos
- Imágenes no usadas
- Volúmenes no utilizados

**Advertencia:** Este comando borrará muchos recursos, asegúrate de que no necesitas ninguno de los datos o imágenes antes de ejecutarlo.

---

### 6. **Ver el estado de los contenedores**

- Si necesitas verificar el estado de los contenedores, usa:

```bash
docker ps
```

- Esto te dará una lista de los contenedores en ejecución. Si deseas ver todos los contenedores (incluso los detenidos), usa:

```bash
docker ps -a
```

---

## Notas

- Asegúrate de tener Docker y Docker Compose correctamente instalados antes de ejecutar estos comandos.
- El archivo `docker-compose.yml` debe estar configurado correctamente para que estos comandos funcionen sin problemas.


## Comando para instalar las librerias de django 

- pip install drf-yasg django-extensions
- pip install -r requirements.txt
