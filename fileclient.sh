#!/bin/sh
docker volume create clientvol

docker build -t client ./client

docker run -it --name client -v clientvol:/usr/clientdata --net client-server client

get Foo1.txt