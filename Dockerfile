# Install Ruby

FROM ruby:3.2.1-alpine3.17

WORKDIR /app

# Install Python

RUN apk add --no-cache --update \
    alpine-sdk \
    python3-dev

RUN ln -sf python3 /usr/bin/python 
RUN python3 -m ensurepip

RUN pip3 install --no-cache --upgrade \
    pip \
    setuptools

# Install Go

RUN apk add --no-cache --update \
    go

COPY go/ go/

# Configure stuff

COPY . /app

RUN make go_dependencies
RUN make python_dependencies
RUN make ruby_dependencies