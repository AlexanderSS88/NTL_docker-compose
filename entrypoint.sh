python manage.py migrate --no-input
python manage.py collectstatic --no-input
sh -c "gunicorn --bind 0.0.0.0:8000 stocks_products.wsgi"

