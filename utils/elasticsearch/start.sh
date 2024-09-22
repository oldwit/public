#!/bin/bash
NAME="elasticsearch_util"
echo -e "\e[32m$NAME script started.\e[0m" && \
docker build -t $NAME . && \
echo -e "\e[32mDocker image $NAME has been created.\e[0m" || \
echo -e "\e[31mDocker image $NAME was not created.\e[0m"
docker run -d \
    -e "discovery.type=single-node" \
    -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" \
    -p 9200:9200 \
    -p 9300:9300 \
    -v ./data:/usr/share/elasticsearch/data \
    --rm \
    --name=$NAME \
    $NAME
echo -e "\e[33mDocker container $NAME left on host.\e[0m" && \
echo -e "\e[33mTo remove it, execute: docker stop $NAME\e[0m" &&\
echo -e "\e[33mDocker image $NAME left on host.\e[0m" && \
echo -e "\e[33mTo remove it, execute: docker rmi -f $NAME\e[0m"
echo -e "\e[32m$NAME finished.\e[0m"
