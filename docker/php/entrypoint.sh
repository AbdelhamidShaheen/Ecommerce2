#!/bin/bash
# Wait for MySQL to be ready
echo "Waiting for MySQL..."
while ! nc -z db 3306; do
  sleep 1
done
echo "MySQL is up!"

# Start PHP-FPM
exec "$@"

