
# syntax=docker/dockerfile:1

FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR fullstack-typescript-todo-list-app

COPY ["./"]

RUN npm install --production

COPY . .

CMD [ "node", "server.js" ]
LABEL maintainer = dmitrysolom
