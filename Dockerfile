FROM ubuntu:15.04

MAINTAINER Jeremy Ellis "keyfreemusic@gmail.com"

RUN rm /bin/sh && ln -s /bin/bash /bin/sh


Add ./temp-files/setup.sh /usr/local/bin/setup.sh
CMD ["/usr/local/bin/setup.sh"]
