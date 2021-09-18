#!/bin/bash

CID=$1
http_proxy=$2
https_proxy=$2
wget https://raw.githubusercontent.com/xuchengcheng926/packetstream/main/docker-compose.yaml -O docker-compose.yaml  

sed -i "s/CID=.*/CID=$CID/g" docker-compose.yml
sed -i "s/http_proxy=.*/http_proxy=$http_proxy/g" docker-compose.yml
sed -i "s/https_proxy=.*/https_proxy=$https_proxy/g" docker-compose.yml
docker-compose up -d --no-recreate
