#To install docker
sudo apt install docker

#To view docker version
docker -v

#To start docker
systemctl --user start docker-desktop

#To list all running containers
docker ps

#Sample hello world from docker
docker run hello-world

#To list all images
docker images

#To build image first remove all files and folders except 3 files; Dockerfile, readme.txt and .dockerignore and then run below command:
docker build --progress=plain --tag dockerangularsample:0.22 --file Dockerfile . 

#To see current working directory
docker run --volume $(pwd):/usr/src/DockerAngularSample dockerangularsample:0.22 pwd

#To create the project
docker run --volume $(pwd):/usr/src/DockerAngularSample dockerangularsample:0.22 ng new DockerAngularSample --defaults --skip-git

#To see current working directory
docker run --volume $(pwd):/usr/src/DockerAngularSample dockerangularsample:0.22 pwd

#To change current working directory
docker run --volume $(pwd):/usr/src/DockerAngularSample --workdir /usr/src/DockerAngularSample dockerangularsample:0.22 pwd

#To run the project
docker run --volume $(pwd):/usr/src/DockerAngularSample --workdir /usr/src/DockerAngularSample --publish 4200:4200 dockerangularsample:0.22 ng serve --host 0.0.0.0
#Now open your browser at localhost:4200 to view the site

# docker run --volume /mnt/c/Users/ak958/Documents/dockerangularsample:/usr/src/DockerAngularSample --publish 4200:4200 dockerangularsample:0.1
# docker run --volume $(pwd):/usr/src/DockerAngularSample --publish 4200:4200 dockerangularsample:0.1

#To view all stopped container
docker ps --filter status=exited -q

#To open bash inside a container
docker exec -it <container-name-or-id> bash

#To remove all stopped container
# docker rm $(docker ps --filter status=exited -q)

#To remove everything
# docker system prune --all --volumes --force

#To stop docker
# systemctl --user stop docker-desktop
