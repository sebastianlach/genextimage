FROM alpine
LABEL maintainer="root@slach.eu"

RUN apk update && apk add e2fsprogs

COPY tar2ext4 /usr/local/bin/tar2ext4
RUN chmod +x /usr/local/bin/tar2ext4

WORKDIR /data
ENTRYPOINT ["tar2ext4"]
