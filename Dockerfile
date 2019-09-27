FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN yum install -y sudo python3 python3-pip && yum clean all

RUN adduser ansible && echo 'ansible:ansible' | chpasswd && usermod -aG wheel ansible

RUN mkdir -p /var/log/ansible ; chown -R ansible:ansible /var/log/ansible

RUN echo "ansible    ALL=(ALL)   NOPASSWD:ALL" >> /etc/sudoers
