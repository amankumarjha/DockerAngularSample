# To install docker
sudo apt install docker

# To view docker version
docker -v

# To start docker
systemctl --user start docker-desktop

# To list all running containers
docker ps

# Sample hello world from docker
docker run hello-world

# To list all images
docker images

# Replace dockerangularsample & DockerAngularSample with your project name as required. 

# To build image first remove all files and folders from current directory except 2 files; Dockerfile and how_to_builld_this_app.txt, then run below command:
docker build --progress=plain --tag dockerangularsample:0.22 --file Dockerfile . 

# To see current working directory
docker run --volume $(pwd):/usr/src/DockerAngularSample dockerangularsample:0.22 pwd

# To create the project
docker run --volume $(pwd):/usr/src/DockerAngularSample dockerangularsample:0.22 ng new DockerAngularSample --defaults --skip-git

# To change current working directory
docker run --volume $(pwd):/usr/src/DockerAngularSample --workdir /usr/src/DockerAngularSample dockerangularsample:0.22 pwd

# To add angular material in the project
docker run --volume $(pwd):/usr/src/DockerAngularSample --workdir /usr/src/DockerAngularSample dockerangularsample:0.22 ng add @angular/material --skip-confirmation

# To run the project
docker run --volume $(pwd):/usr/src/DockerAngularSample --workdir /usr/src/DockerAngularSample --publish 4200:4200 dockerangularsample:0.22 ng serve --host 0.0.0.0 --poll=100
#Now open your browser at localhost:4200 to view the site

# To view all stopped container
docker ps --filter status=exited -q

# To open bash inside a container
docker exec -it <container-name-or-id> bash

# To remove all stopped container
#docker rm $(docker ps --filter status=exited -q)

# To remove everything
#docker system prune --all --volumes --force

# To stop docker
#systemctl --user stop docker-desktop