upstream docker_compose_sp {
    server django_app:8000;
    }

server {
    listen 80;
    location / {
        proxy_pass http://docker_compose_sp;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host $host;
        proxy_redirect off;
    }
    location /staticfiles/ {
        alias /var/www/html/staticfiles/;
        }
    }

