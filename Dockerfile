FROM kodekloud/centos-ssh-enabled:master

RUN yum install -y wget && yum clean all

RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm && rpm -ivh mysql-community-release-el7-5.noarch.rpm
