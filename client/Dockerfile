FROM python:3.8-slim-buster 

COPY . /usr/clientdata
WORKDIR /usr/clientdata
VOLUME /clientvol
ENV IP "172.16.0.22"
ENV PORT "5002"

CMD [ "sh", "-c", "python client.py $IP $PORT" ]

