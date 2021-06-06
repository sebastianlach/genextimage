FROM slach/archstrap
MAINTAINER root@slach.eu

USER root
WORKDIR /data

COPY genextimage /usr/local/bin/genextimage
RUN chmod +x /usr/local/bin/genextimage

ENTRYPOINT ["genextimage"]
