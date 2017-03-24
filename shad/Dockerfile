FROM ubuntu:16.04
MAINTAINER keepob@163.com

ADD run.sh /run.sh

RUN apt-get update && \
    chmod 755 /run.sh && \
    apt-get install -y python-pip && \
    pip install shadowsocks

ENV PORT=60150
ENV KEY=tk
    
EXPOSE 60150
CMD ["/run.sh"]
