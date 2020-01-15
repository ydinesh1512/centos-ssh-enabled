FROM kodekloud/haproxy

RUN useradd loki && echo "loki:Mischi3f" | chpasswd

RUN usermod -G wheel loki

RUN yum install openssh-server openssh-clients -y

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

CMD ["/usr/sbin/sshd" "-D"]
