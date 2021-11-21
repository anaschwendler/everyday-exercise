FROM ruby:3.0.2-alpine3.14

RUN apk add --no-cache --update \
    alpine-sdk \
    python3-dev

RUN ln -sf python3 /usr/bin/python 
RUN python3 -m ensurepip

RUN pip3 install --no-cache --upgrade \
    pip \
    setuptools

COPY . /app
WORKDIR /app

RUN make python_dependencies
RUN make ruby_dependencies