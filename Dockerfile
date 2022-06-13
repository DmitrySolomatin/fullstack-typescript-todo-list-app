FROM nginx:alpine
COPY client, server /usr/share/nginx/html
LABEL maintainer = dmitrysolom
