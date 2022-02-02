
python manage.py makemigrations
python manage.py migrate --noinput
python manage.py collectstatic --noinput

gunicorn SmartAttendance.wsgi:application --bing 0.0.0.0:8000
