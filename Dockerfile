FROM debian-slim:latest

MAINTAINER Kenneth Ehmsen (https://github.com/KennethEhmsen)

RUN apt update && \
    apt upgrade && \
    apt install --no-cache openssl && \
    rm -rf /var/cache/apt/*

ENTRYPOINT ["openssl"]
