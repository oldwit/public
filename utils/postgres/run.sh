#!/bin/bash
NAME="postgres.util"
NETWORK_NAME="util"
VOLUME_NAME="postgres"
echo -e "\e[32m$NAME run script started.\e[0m" && \
docker network create $NETWORK_NAME && \
echo -e "\e[32mNetwork $NETWORK_NAME has been created.\e[0m" || \
echo -e "\e[33mNetwork $NETWORK_NAME already exists.\e[0m"
docker volume create $VOLUME_NAME && \
echo -e "\e[32mVolume $VOLUME_NAME has been created.\e[0m" || \
echo -e "\e[33mVolume $VOLUME_NAME already exists.\e[0m" 
docker run -d \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=postgres \
    -p 50001:5432 \
    -v $VOLUME_NAME:/var/lib/postgresql/data \
    -v ./script:/script \
    --rm \
    --network=$NETWORK_NAME \
    --name=$NAME \
    $NAME || \
echo -e "\e[31mExecute build.sh script first.\e[0m"
echo -e "\e[32m$NAME run script finished.\e[0m"
