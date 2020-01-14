FROM kodekloud:haproxy

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd loki && echo "loki:Mischi3f" | chpasswd

RUN usermod -G wheel loki

RUN yum install openssh-server openssh-clients -y

CMD ["/usr/sbin/sshd" "-D"]
