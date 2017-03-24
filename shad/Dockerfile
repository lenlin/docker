FROM ubuntu:16.04
MAINTAINER keepob@163.com

ADD run.sh /run.sh

RUN apt-get update && \
    chmod 755 /run.sh && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks
ENV PORT=60150
    KEY=gaye.tk
    MAT=aes-256-cfb
    SOT=0.0.0.0
#Configure container to run as an executable 
ENTRYPOINT ["run.sh"]
