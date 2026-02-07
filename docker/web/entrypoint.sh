#!/usr/bin/env bash
set -e

echo "➡️ migrate..."
python manage.py migrate --noinput

echo "➡️ collectstatic..."
python manage.py collectstatic --noinput

exec "$@"
