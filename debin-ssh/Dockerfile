FROM debian6
MAINTAINER gal "keepob@163.com"
ADD sources.list /etc/apt/sources.list
RUN apt-get update && apt-get upgrade
RUN apt-get install -y nginx
RUN apt-get install -y supervisor
ADD run.sh /var/run.sh
ADD supervisord.conf /etc/supervisord.conf
RUN mkdir /var/run/sshd
RUN echo "root:123456" | chpasswd
EXPOSE 22 80
CMD bash /var/run.sh
