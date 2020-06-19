FROM alpine:latest

COPY ./setup ~/

RUN apk update && \
    apk add python3 \
            nodejs && \
    pip3 install pynvim \
    sh ~/setup/setup.sh
