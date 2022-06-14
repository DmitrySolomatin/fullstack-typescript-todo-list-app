FROM node
LABEL authors="Dmitry Solomatin"
# update dependencies and install curl
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*
# Create app directory
WORKDIR /fullstack-typescript-todo-list-app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./ \
#     ./source ./

# This will copy everything from the source path 
# --more of a convenience when testing locally.
COPY . .
# update each dependency in package.json to the latest version
RUN npm install -g npm-check-updates \
    ncu -u \
    npm install \
    npm install express \
    npm install babel-cli \
    npm install babel-preset \
    npm install babel-preset-env
# If you are building your code for production
RUN npm ci --only=production
# Bundle app source
COPY . /fullstack-typescript-todo-list-app
EXPOSE 3000
CMD [ "babel-node", "app.js" ]
