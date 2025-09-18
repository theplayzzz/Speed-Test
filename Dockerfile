FROM nginxinc/nginx-unprivileged:stable-alpine
# Todos os arquivos estáticos do repositório vão para a pasta pública do nginx:
COPY . /usr/share/nginx/html
# A imagem já expõe 8080; não precisa alterar. Traefik apontará para essa porta.

