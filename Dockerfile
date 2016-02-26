FROM ubuntu:14.04

MAINTAINER Jeremy Ellis "keyfreemusic@gmail.com"

ADD ./temp-files /home/ubuntu/workspace/temp-files


ENV PATH ${PATH}:/home/ubuntu/workspace/temp-files
RUN ["sudo chmod a+x /home/ubuntu/workspace/temp-files/setup.sh","bash /home/ubuntu/workspace/temp-files/setup.sh"]


