# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/engine/reference/builder/

ARG NODE_VERSION=20
ARG ANGULAR_VERSION=17.1.0

FROM node:${NODE_VERSION}-alpine

# Use development node environment by default.
ENV NODE_ENV development

WORKDIR /usr/src/

# Leverage a cache mount to /root/.npm to speed up subsequent builds.
RUN --mount=type=cache,target=/root/.npm \
    npx -p @angular/cli@${ANGULAR_VERSION} ng new DockerAngularSample

WORKDIR /usr/src/DockerAngularSample

# Copy the rest of the source files into the image.
COPY . .

# Expose the port that the application listens on.
EXPOSE 4200

RUN file="$(pwd)" && echo $file
RUN file="$(ls -l)" && echo $file
# Run the application.
CMD npx ng serve --host 0.0.0.0
