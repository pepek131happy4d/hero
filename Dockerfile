FROM frolvlad/alpine-glibc

RUN apk update && apk add --no-cache --update python3 py3-pip && apk add git
WORKDIR /root/webapp

