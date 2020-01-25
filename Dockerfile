FROM kodekloud/centos-systemd-ssh-enabled:httpd

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd tony && echo "tony:Ir0nM@n" | chpasswd

RUN yum install -y sudo openssh-clients zip

RUN usermod -G wheel tony
