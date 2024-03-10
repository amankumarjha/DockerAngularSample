# To run this project

## To build image

docker build --progress=plain --tag dockerangularsample:0.1 --file Dockerfile .

## To prepare the project for first run in new development environment

docker create --name dummy dockerangularsample:0.1
docker cp dummy:/usr/src/dockerangularsample/. $(pwd)
docker rm -f dummy

## To run the project in development

docker run --publish 4200:4200 --volume $(pwd):/usr/src/dockerangularsample --rm dockerangularsample:0.1

## To open a shell with volume

docker run --volume $(pwd):/usr/src/dockerangularsample --rm -it --entrypoint /bin/sh dockerangularsample:0.1

## To open a shell without volume

docker run --rm -it --entrypoint /bin/sh dockerangularsample:0.1

## To build the project for production

docker run --volume $(pwd):/usr/src/dockerangularsample --rm dockerangularsample:0.1 ng build
