FROM nginx:ubuntu
COPY client, server /usr/share/nginx/html
LABEL maintainer = dmitrysolom
