#!/bin/bash
IMAGE_NAME="openssl-util"
echo -e "\e[32mOpenssl util script started.\e[0m"
docker build -t $IMAGE_NAME .
echo -e "\e[32mDocker image $IMAGE_NAME has been created.\e[0m"
docker run -it -v ./files:/app --rm --entrypoint=/bin/sh $IMAGE_NAME
echo -e "\e[33mDocker image $IMAGE_NAME left on host.\e[0m"
echo -e "\e[33mTo remove it, execute: docker rmi -f $IMAGE_NAME\e[0m"
echo -e "\e[32mOpenssl util finished.\e[0m"