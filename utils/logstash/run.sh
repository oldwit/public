#!/bin/bash
NAME="logstash.util"
NETWORK_NAME="util"
echo -e "\e[32m$NAME run script started.\e[0m" && \
docker network create $NETWORK_NAME && \
echo -e "\e[32mNetwork $NETWORK_NAME has been created.\e[0m" || \
echo -e "\e[33mNetwork $NETWORK_NAME already exists.\e[0m"
docker run -d \
    -p 50020:5044 \
    -p 50021:9600 \
    -p 50022:8080 \
    -v ./pipeline:/usr/share/logstash/pipeline/ \
    --rm \
    --network=$NETWORK_NAME \
    --name=$NAME \
    $NAME || \
echo -e "\e[31mExecute build.sh script first.\e[0m"
echo -e "\e[32m$NAME run script finished.\e[0m"
