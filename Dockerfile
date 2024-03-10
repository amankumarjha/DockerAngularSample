# syntax=docker/dockerfile:1

ARG NODE_VERSION=20
ARG ANGULAR_VERSION=17.1.0

FROM node:${NODE_VERSION}-alpine

# Use development node environment by default.
ENV NODE_ENV development

RUN npm install -g @angular/cli@${ANGULAR_VERSION}
RUN ng analytics disable --global true
WORKDIR /usr/src/
RUN ng new dockerangularsample --defaults --skip-git
WORKDIR /usr/src/dockerangularsample
RUN ng add @angular/material --defaults --skip-confirmation
COPY src src
COPY tsconfig.json tsconfig.json

CMD ng serve --host 0.0.0.0 --poll 100