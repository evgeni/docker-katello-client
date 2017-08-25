FROM centos:5
LABEL maintainer="evgeni@golov.de"
LABEL description="Katello client for testing based on CentOS 5"
RUN rm -f /etc/yum.repos.d/*
ADD repos/* /etc/yum.repos.d/
RUN yum -y install katello-client-repos && yum clean all
RUN yum -y install subscription-manager && yum clean all
