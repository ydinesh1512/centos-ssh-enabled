FROM kodekloud/centos-systemd-ssh-enabled:httpd

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd banner && echo "banner:BigGr33n" | chpasswd

RUN usermod -G wheel banner

RUN yum install -y sudo openssh-clients
