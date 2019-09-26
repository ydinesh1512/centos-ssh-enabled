FROM gcr.io/kodekloud/centos-ssh-enabled

RUN yum install -y sudo && yum clean all

RUN adduser ansible && RUN echo 'ansible:ansible' | chpasswd && usermod -aG wheel ansible

RUN echo "ansible    ALL=(ALL)   NOPASSWD:ALL" >> /etc/sudoers