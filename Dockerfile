FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN yum install -y sudo python3 python3-pip openssh-clients && yum clean all

RUN adduser thor && echo 'thor:mjolnir123' | chpasswd && usermod -aG wheel thor

RUN mkdir -p /var/log/ansible ; chown -R thor:thor /var/log/ansible

RUN echo "thor    ALL=(ALL)   NOPASSWD:ALL" >> /etc/sudoers

ENTRYPOINT /usr/sbin/sshd -D

USER thor
