# Usar la imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Instalar netcat-openbsd (la versión disponible en Debian slim)
RUN apt-get update && apt-get install -y netcat-openbsd

# Copiar el archivo requirements.txt al contenedor
COPY requirements.txt /app/requirements.txt

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de los archivos del backend
COPY . .

# Crear un script de entrypoint para esperar a la base de datos
RUN echo '#!/bin/bash\n\
set -e\n\
host="$DATABASE_HOST"\n\
port=5432\n\
echo "Waiting for database at $host:$port..."\n\
while ! nc -z "$host" "$port"; do\n\
  sleep 1\n\
done\n\
echo "Database is ready!"\n\
# Crear migraciones si es necesario\n\
python manage.py makemigrations\n\
# Aplicar migraciones a la base de datos\n\
python manage.py migrate\n\
exec "$@"' > /wait_and_run.sh && chmod +x /wait_and_run.sh

# Ejecutar el script como entrypoint
ENTRYPOINT ["sh", "/wait_and_run.sh"]

# Comando por defecto para iniciar el servidor Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
