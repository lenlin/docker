FROM debian:jessie
MAINTAINER gal "keepob@163.com"

ADD run.sh /run.sh

RUN apt-get update && \
    apt-get -yq install openssh-server vim python-pip && \
    pip install shadowsocks==2.8.2 && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /var/run/sshd && \
    chmod 755 /run.sh && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV RPASS=12345t
ENV PORT=2012
ENV KEY=gy.tk
ENV MAC=aes-256-cfb

VOLUME ["/root/data"]

EXPOSE 22 2012

CMD ["/run.sh"]
