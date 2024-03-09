# To run this project

## To build image

docker build --progress=plain --tag dockerangularsample:0.1 --file Dockerfile .

## To run the project in development

docker run --volume $(pwd):/usr/src/DockerAngularSample --rm dockerangularsample:0.1

## To open a shell

docker run --volume $(pwd):/usr/src/DockerAngularSample --rm -it --entrypoint /bin/sh  dockerangularsample:0.1

## To build the project for production

docker run --volume $(pwd):/usr/src/DockerAngularSample --workdir /usr/src/DockerAngularSample --rm dockerangularsample:0.1 ng build
