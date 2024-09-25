#!/bin/bash
NAME="ansible_util"
echo -e "\e[32m$NAME run script started.\e[0m" && \
docker run -it -v ./files:/app \
    --rm \
    --entrypoint=/bin/sh \
    --name=$NAME \
    --network=host \
    $NAME && \
echo -e "\e[32m$NAME run finished.\e[0m"