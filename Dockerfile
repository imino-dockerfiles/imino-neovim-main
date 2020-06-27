FROM alpine:latest

COPY ./setup /root/setup/

RUN apk update && \
    apk add python3 \
            python3-dev \
            musl-dev \
            nodejs \
            gcc \
            neovim && \    
    pip3 install pynvim
#   sh /root/setup/setup.sh
