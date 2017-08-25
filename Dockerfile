FROM centos:6
LABEL maintainer="evgeni@golov.de"
LABEL description="Katello client for testing based on CentOS 6"
ADD https://copr.fedorainfracloud.org/coprs/dgoodwin/subscription-manager/repo/epel-6/dgoodwin-subscription-manager-epel-6.repo /etc/yum.repos.d/dgoodwin-subscription-manager-epel-6.repo
RUN yum -y install subscription-manager && yum clean all
