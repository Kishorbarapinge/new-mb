FROM ubuntu
RUN apt-get update 
RUN apt-get install nginx -y 
WORKDIR /tmp
RUN touch /tmp/test1
COPY /tmp/test1 /tmp/test2
ENTRYPOINT service nginx start 
