#!/bin/bash
NAME="ansible.util"
echo -e "\e[32m$NAME run script started.\e[0m" && \
docker run -it -v ./files:/app \
    --rm \
    --entrypoint=/bin/sh \
    --name=$NAME \
    --network=host \
    $NAME || \
echo -e "\e[31mExecute build.sh script first.\e[0m"
echo -e "\e[32m$NAME run script finished.\e[0m"