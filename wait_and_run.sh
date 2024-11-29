#!/bin/bash
set -e

host="$DATABASE_HOST"
port=5432

# Espera hasta que la base de datos esté lista para aceptar conexiones
echo "Waiting for database at $host:$port..."
while ! nc -z "$host" "$port"; do
  sleep 1
done

# Una vez que la base de datos esté lista, ejecuta las migraciones
echo "Database is ready!"
python manage.py migrate

# Finalmente, ejecuta el servidor Django
exec "$@"
