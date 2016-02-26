FROM ubuntu:15.04

MAINTAINER Jeremy Ellis "keyfreemusic@gmail.com"




ADD ./temp-files /home/ubuntu/workspace/temp-files

ENV PATH ${PATH}:/home/ubuntu/workspace/temp-files


COPY ./temp-files /home/ubuntu/workspace/temp-files
ENTRYPOINT ["/home/ubuntu/workspace/temp-files/setup.sh"]
