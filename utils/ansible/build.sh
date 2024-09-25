#!/bin/bash
NAME="ansible.util"
echo -e "\e[32m$NAME build script started.\e[0m" && \
docker build -t $NAME . && \
echo -e "\e[32mDocker image $NAME has been created.\e[0m" || \
echo -e "\e[31mDocker image $NAME was not created.\e[0m"
echo -e "\e[32m$NAME build script finished.\e[0m"