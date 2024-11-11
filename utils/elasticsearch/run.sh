#!/bin/bash
NAME="elasticsearch.util"
NETWORK_NAME="util"
VOLUME_NAME="elasticsearch"
echo -e "\e[32m$NAME run script started.\e[0m" && \
docker network create $NETWORK_NAME && \
echo -e "\e[32mNetwork $NETWORK_NAME has been created.\e[0m" || \
echo -e "\e[33mNetwork $NETWORK_NAME already exists.\e[0m"
docker volume create $VOLUME_NAME && \
echo -e "\e[32mVolume $VOLUME_NAME has been created.\e[0m" || \
echo -e "\e[33mVolume $VOLUME_NAME already exists.\e[0m"
docker run -d \
    -e "discovery.type=single-node" \
    -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" \
    -p 50010:9200 \
    -p 50011:9300 \
    -v $VOLUME_NAME:/usr/share/elasticsearch/data \
    --rm \
    --network=$NETWORK_NAME \
    --name=$NAME \
    $NAME || \
echo -e "\e[31mExecute build.sh script first.\e[0m"
echo -e "\e[32m$NAME run script finished.\e[0m"
