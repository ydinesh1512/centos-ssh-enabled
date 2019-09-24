FROM kodekloud/centos-ssh-enabled:service_module_web1

RUN yum install -y wget

RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm && rpm -ivh mysql-community-release-el7-5.noarch.rpm && yum -y update

# kodekloud/centos-ssh-enabled:mysql
