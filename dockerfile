FROM ubuntu:22.04

RUN apt-get update && apt-get install -y

RUN apt-get install -y openjdk-11-jre

RUN apt-get install apache2 -y

RUN apt-get install nginx -y

COPY sample*.txt /tmp
