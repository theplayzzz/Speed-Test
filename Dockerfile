# Imagem oficial do OpenSpeedTest Server
FROM openspeedtest/latest

# Render faz o TLS na borda, então mantemos apenas HTTP na porta 3000
# A imagem já expõe 3000 (HTTP) e 3001 (HTTPS)

# Desabilita Let's Encrypt dentro do container (TLS é do Render)
ENV ENABLE_LETSENCRYPT=False

# Copia os arquivos do repositório (index.html, hosted.html, assets, etc.)
# para sobrepor os estáticos da imagem base
WORKDIR /usr/share/nginx/html
COPY index.html hosted.html assets ./


