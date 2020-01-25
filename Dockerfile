FROM kodekloud/centos-systemd-ssh-enabled:httpd

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd steve && echo "steve:Am3ric@" | chpasswd

RUN usermod -G wheel steve

RUN yum install -y sudo openssh-clients zip

