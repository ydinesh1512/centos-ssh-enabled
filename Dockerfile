FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN yum install -y sudo && yum clean all

RUN adduser maria && echo 'maria:maria' | chpasswd && usermod -aG sudo maria

RUN echo "maria    ALL=(ALL)   NOPASSWD:ALL" >> /etc/sudoers

RUN rm -f /var/run/nologin
