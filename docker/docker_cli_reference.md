# docker most common command line reference

## docker build

docker build <options> <path> — builds docker image based on Dockerfile that must be provided in <path>, it will return id of new build image

For example

docker build .

docker build --no-cache . — drops cached middle-images and builds image from scratch

docker build -t my_service . — builds image and gives it a name of "my_service"

## docker tag

docker tag <image_id> <custom_name> — binds custom name to easily identify docker image

For example

docker tag 2ee9b4c8059f python_server

## docker run

docker run (-it || -d) -p <external_port:internal_port> --name <image_name> <custom_container_name>

transcript

-it — run container in interactive mode

-d - run container in daemon mode

-p <external_port:internal_port> — maps(forwards) external port to internal service port

--name <image_name> — name of docker image to run

<custom_container_name> — provides name for running container

For example

docker run -it -p 80:80 --name python_server http_server

## docker ps (-a)

docker ps (-a) — display list of running (or all) docker containers

## docker stop

docker stop (<container_name> || <container_id>) — shutdown container

## docker start

docker start (<container_name> || <container_id>) — run stopped container

## docker rm

docker rm (<container_name> || <container_id>) — remove container

## docker image

docker image ls — display list of docker images

docker image rm (<image_name> || <image_id>) — remove docker image

## docker volume

docker volume ls — display list of docker volumes

docker volume rm (<volume_name> || <volume_id>) — remove docker volume

