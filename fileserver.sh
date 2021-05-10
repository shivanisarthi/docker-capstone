#!/bin/sh
 docker network create --subnet=172.16.0.0/16 client-server

docker volume create servervol

docker build -t server ./server

docker run -it --name server -v servervol:/usr/serverdata --net client-server --ip 172.16.0.22 server

