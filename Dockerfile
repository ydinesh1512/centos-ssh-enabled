FROM kodekloud/centos-systemd-ssh-enabled:nfsclient

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd banner && echo "banner:BigGr33n" | chpasswd

RUN usermod -G wheel banner

RUN yum install -y sudo
