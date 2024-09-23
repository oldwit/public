#!/bin/bash
NAME="logstash.util"
NETWORK_NAME="util"
echo -e "\e[32m$NAME script started.\e[0m" && \
docker network create $NETWORK_NAME && \
echo -e "\e[32mNetwork $NETWORK_NAME has been created.\e[0m" || \
echo -e "\e[33mNetwork $NETWORK_NAME already exists.\e[0m"
docker build -t $NAME . && \
echo -e "\e[32mDocker image $NAME has been created.\e[0m" || \
echo -e "\e[31mDocker image $NAME was not created.\e[0m"
docker run -d \
    -p 5044:5044 \
    -p 9600:9600 \
    -p 8080:8080 \
    -v ./pipeline:/usr/share/logstash/pipeline/ \
    --rm \
    --network=$NETWORK_NAME \
    --name=$NAME \
    $NAME
echo -e "\e[33mDocker container $NAME left on host.\e[0m" && \
echo -e "\e[33mTo remove it, execute: docker stop $NAME\e[0m" &&\
echo -e "\e[33mDocker image $NAME left on host.\e[0m" && \
echo -e "\e[33mTo remove it, execute: docker rmi -f $NAME\e[0m"
echo -e "\e[32m$NAME finished.\e[0m"
