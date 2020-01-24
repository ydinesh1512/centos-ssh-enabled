FROM kodekloud/centos-systemd-ssh-enabled

RUN useradd loki && echo "loki:Mischi3f" | chpasswd

RUN usermod -G wheel loki

RUN yum install sudo openssh-server openssh-clients -y

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN ssh-keygen -A

ENV BIND_PORT $BIND_PORT

EXPOSE ${BIND_PORT}

