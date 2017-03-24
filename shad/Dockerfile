FROM ubuntu:16.04
MAINTAINER keepob@163.com

RUN apt-get update && \
    apt-get install -y python-pip libsodium18 && \
    pip install shadowsocks==2.8.2

ENTRYPOINT ["/usr/local/bin/ssserver"]
