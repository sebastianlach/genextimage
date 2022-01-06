FROM slach/archstrap
MAINTAINER root@slach.eu

USER root
WORKDIR /data

COPY tar2ext4 /usr/local/bin/tar2ext4
RUN chmod +x /usr/local/bin/tar2ext4

ENTRYPOINT ["tar2ext4"]
