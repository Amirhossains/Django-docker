#!/bin/bash -x

echo "Apply database migrations"
python manage.py migrate --noinput || exit 1
exec "$@"