### STAGE 1: Build ###
  FROM node:12.22-alpine3.10 AS build
  WORKDIR /usr/src/app
  COPY package.json package-lock.json ./
  RUN npm i -g @angular/cli

  # Install app dependencies:
  RUN npm i

  COPY . .
  RUN ng build --prod
