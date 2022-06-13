FROM nginx:alpine
WORKDIR fullstack-typescript-todo-list-app
COPY client /usr/share/nginx/html
COPY server /usr/share/nginx/html
LABEL maintainer = dmitrysolom
