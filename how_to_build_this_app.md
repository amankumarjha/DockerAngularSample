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

# To build image:
docker build --progress=plain --tag dockerangularsample:0.1 --file Dockerfile . 

# To create the project: first remove all files and folders from current directory except 2 files; Dockerfile and how_to_builld_this_app.md, then run below command:
docker run --volume $(pwd):/usr/src/DockerAngularSample --rm -it --entrypoint /bin/sh  dockerangularsample:0.1
pwd
ng new DockerAngularSample --defaults --skip-git
# To add angular material in the project:
cd DockerAngularSample
ng add @angular/material --defaults --skip-confirmation
exit

# To run the project in development:
docker run --volume $(pwd):/usr/src/DockerAngularSample --workdir /usr/src/DockerAngularSample --publish 4200:4200  --rm -it --entrypoint /bin/sh dockerangularsample:0.1
ng serve --host 0.0.0.0 --poll 100
#Now open your browser at localhost:4200 to view the site

# To build the project for production
docker run --volume $(pwd):/usr/src/DockerAngularSample --workdir /usr/src/DockerAngularSample --rm dockerangularsample:0.1 ng build
