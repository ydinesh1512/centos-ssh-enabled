FROM centos:7

RUN yum -y install initscripts && yum clean all

RUN yum install -y openssh-server openssh-clients

RUN echo 'root:Passw0rd' | chpasswd

RUN /usr/bin/ssh-keygen -A

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]