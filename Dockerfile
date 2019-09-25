FROM kodekloud/centos-ssh-enabled

RUN yum install -y initscripts

RUN yum install -y wget

RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm && rpm -ivh mysql-community-release-el7-5.noarch.rpm

# kodekloud/centos-ssh-enabled:mysql
ENTRYPOINT ["/usr/sbin/init"]
CMD ["systemctl start sshd"]