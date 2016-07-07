FROM gliderlabs/alpine:latest

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    bash \
    py-mysqldb \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

EXPOSE 8080
