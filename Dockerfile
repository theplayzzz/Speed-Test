FROM nginxinc/nginx-unprivileged:stable-alpine
COPY . /usr/share/nginx/html
# Nginx unprivileged escuta 8080
