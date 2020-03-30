# Dockerfile instructions reference
Not all but most common directives

## FROM
FROM image:tag — identify parent image around which will be build image of current docker file


For example

FROM python:3

## RUN
RUN command — runs shell command, can take command arguments


For example

RUN apt install -y python3.7-dev

# COPY
COPY source destination — copy source file/directory from work directory to specified destination


For example

COPY myfile.txt /container_folder

# ADD
ADD source destination — work like COPY command but can extract tar archives and use remote urls as source

# WORKDIR
WORKDIR directory — specifies current working directory


For example

WORKDIR /home

# ENV
ENV key value — creates new environment variable and it's value, may use syntax like key=value


For example

ENV PROJECT_NAME my_project_name

# ARG
ARG key=value — scope of this variable is Dockerfile, can be used before FROM directive


For example

ARG CODE_VERSION=latest

FROM base:$CODE_VERSION

# CMD
CMD command — execute command in container, can be used only once in Dockerfile


For example

CMD [ "echo", "$HOME" ]

# LABEL
LABEL key=value — adds metadata of image


For example

LABEL "com.example.vendor"="ACME Incorporated"

# EXPOSE
EXPOSE port || port/protocol — binds(publishes) container external port


For example

EXPOSE 80 — if protocol is not provided — tcp is default

EXPOSE 80/tcp

EXPOSE 80/udp

# ENTRYPOINT
ENTRYPOINT ["command or shell file path"] — execute command or shell script in container. Dockerfile must containt CMD or/and ENTRYPOINT, otherwise container build will fail


For example

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# VOLUME
VOLUME path — mounts volume, which can store data, can be mount by other containers, can have spicific name


For example

VOLUME ["/var/log"]

VOLUME /myvol

