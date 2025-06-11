#!/usr/bin/env sh

set -e  # Exit on error

# Run migrations
echo "Running database migrations..."
python manage.py migrate --noinput

# Start Gunicorn and let it take PID 1 so it gets signals directly
echo "Starting Gunicorn..."
exec gunicorn notesapp.wsgi --bind 0.0.0.0:8000

