python manage.py migrate
gunicorn django_celery.wsgi:application --bind 0.0.0.0:8000 --log-level info --timeout 180  --workers 3

