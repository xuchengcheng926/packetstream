#!/bin/bash

export COMPOSE_HTTP_TIMEOUT=500
wget https://raw.githubusercontent.com/xuchengcheng926/packetstream/main/docker-compose.yaml -O docker-compose.yaml  

sed -i "s/CID=.*/CID=$1/g" docker-compose.yml
sed -i "s/http_proxy=.*/http_proxy=$2/g" docker-compose.yaml
sed -i "s/https_proxy=.*/https_proxy=$2/g" docker-compose.yaml
docker-compose up -d --no-recreate
