FROM xaviaznar/rpi-alpine-base:20170325

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/community/" >> /etc/apk/repositories && \
    apk update && \
    apk add hugo && \
    rm -rf /var/cache/apk/*

EXPOSE 1313
WORKDIR /www/
ENTRYPOINT [ "hugo"]
