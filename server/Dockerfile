FROM python 
COPY . /usr/serverdata
WORKDIR /usr/serverdata
VOLUME /servervol
ENV PORT "5002"
CMD [ "sh", "-c", "python server.py $PORT" ]