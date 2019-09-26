FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN yum install -y sudo && yum clean all

RUN adduser maria && RUN echo 'maria:maria' | chpasswd && usermod -aG wheel ansible

RUN echo "maria    ALL=(ALL)   NOPASSWD:ALL" >> /etc/sudoers