FROM ubuntu:15.04

MAINTAINER Jeremy Ellis "keyfreemusic@gmail.com"

RUN rm /bin/sh && ln -s /bin/bash /bin/sh


COPY ./temp-files /home/ubuntu/workspace/temp-files

ENV PATH ${PATH}:/home/ubuntu/workspace/temp-files



ENTRYPOINT ["/home/ubuntu/workspace/temp-files/setup.sh"]
