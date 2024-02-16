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

#To build image first remove all files and folders except 3 files: Dockerfile, readme.txt and .dockerignore and then run below command

docker build --tag dockerangularsample:0.1 --file Dockerfile . 

#To run the program
docker run --publish 4200:4200 dockerangularsample:0.1

#Now open your browser at localhost:4200 to view the site
 
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
