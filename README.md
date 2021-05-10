
Usage (on 2 separate command prompt windows):
client.py "Host-address" "Port-number"
server.py "Port-number"

 To get into the container shell instead of running the applications by default (i.e, on run command).
 
FOR SERVER CONTAINER

docker run -it exec <container_ID/container_Name> bash
In our case ,

docker run -it exec server bash

And run the command ,
   

    python server.py 5003 (port number>5000)

The command will execute in container's shell 
And will bind successfully and wait for the cleint


FOR CLIENT CONTAINER

docker run -it exec <container_ID/container_Name> bash
In our case ,

docker run -it exec client bash

And run the command ,
   

    python client.py 172.16.0.22 5003 (port number>5000)(IP address same as the server one )

The command will execute in container's shell 
And you can get your file using command
get filename.txt
(get Foo1.txt)

This file will be received by the client and you can see it in the container's clientdata directory

By doing ls command in clientdata directory


What should be done to get into the container shell instead of running the applications by default?

While running for client
docker run -it --name client -v clientvol:/usr/clientdata --net client-server client bash

If container already started

docker exec -it client bash 


While running for server

docker run -it --name server -v servervol:/usr/serverdata --net client-server --ip 172.16.0.22 server bash



Created volume using separate docker volume create servervol/clientvol command and mount it with the container serverdata/clientdata at run-time











