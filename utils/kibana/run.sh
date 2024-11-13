#!/bin/bash
NAME="kibana.util"
NETWORK_NAME="util"
echo -e "\e[32m$NAME run script started.\e[0m" && \
docker network create $NETWORK_NAME && \
echo -e "\e[32mNetwork $NETWORK_NAME has been created.\e[0m" || \
echo -e "\e[33mNetwork $NETWORK_NAME already exists.\e[0m"
docker run -d \
    -p 50030:5601 \
    -e ELASTICSEARCH_HOSTS="http://elasticsearch.util:50010" \
    --rm \
    --network=$NETWORK_NAME \
    --name=$NAME \
    $NAME || \
echo -e "\e[31mExecute build.sh script first.\e[0m"
echo -e "\e[32m$NAME run script finished.\e[0m"
