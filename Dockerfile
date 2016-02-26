FROM ubuntu:14.04

MAINTAINER Jeremy Ellis "keyfreemusic@gmail.com"

COPY ./temp-files /home/ubuntu/workspace/temp-files


ENV PATH ${PATH}:/home/ubuntu/workspace
RUN ["bash /home/ubuntu/workspace/temp-files/setup.sh"]


