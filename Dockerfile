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

WORKDIR /app

ONBUILD COPY . /app
ONBUILD RUN virtualenv /env && /env/bin/pip install -r /app/requirements.txt

EXPOSE 8080
