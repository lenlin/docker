FROM centos:6.6
MAINTAINER gaoal "keepob@163.com"

ADD CentOS-Base.repo /CentOS-Base.repo
ADD opensips.cfg /opensips.cfg
ADD run.sh /run.sh

RUN sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/sysconfig/selinux && \
    service iptables stop && chkconfig iptables off && \
    cat /CentOS-Base.repo > /etc/yum.repos.d/CentOS-Base.repo && \
    yum install http://yum.opensips.org/2.2/releases/el/6/i386/opensips-yum-releases-2.2-3.el6.noarch.rpm && \
    yum install mysql-server mysql-devel opensips opensips-db_mysql && \
    cat /opensips.cfg > /etc/opensips/opensips.cfg
