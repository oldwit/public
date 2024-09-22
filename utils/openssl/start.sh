#!/bin/bash
NAME="openssl-util"
echo -e "\e[32mOpenssl util script started.\e[0m"
docker build -t $NAME . && \
echo -e "\e[32mDocker image $NAME has been created.\e[0m" || \
echo -e "\e[31mDocker image $NAME was not created.\e[0m"
docker run -it -v ./files:/app \
    --rm \
    --entrypoint=/bin/sh \
    $NAME && \
echo -e "\e[33mDocker image $NAME left on host.\e[0m" && \
echo -e "\e[33mTo remove it, execute: docker rmi -f $NAME\e[0m"
echo -e "\e[32mOpenssl util finished.\e[0m"