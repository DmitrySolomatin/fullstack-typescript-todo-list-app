FROM nginx:alpine
COPY client /usr/share/nginx/html
COPY server /usr/share/nginx/html
LABEL maintainer = dmitrysolom
