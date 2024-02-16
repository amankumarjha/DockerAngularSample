# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/engine/reference/builder/

ARG NODE_VERSION=20
ARG ANGULAR_VERSION=17.1.0

FROM node:${NODE_VERSION}-alpine

# Use development node environment by default.
ENV NODE_ENV development

RUN npm install -g @angular/cli@${ANGULAR_VERSION}
RUN ng analytics disable --global true

RUN file="$(pwd)" && echo $file

WORKDIR /usr/src/DockerAngularSample

RUN ng new DockerAngularSample --directory . --defaults --skip-git

# Copy the rest of the source files into the image.
COPY . .

# EXPOSE 4200

RUN file="$(pwd)" && echo $file
# VOLUME . /usr/src/DockerAngularSample
CMD ng serve --host 0.0.0.0