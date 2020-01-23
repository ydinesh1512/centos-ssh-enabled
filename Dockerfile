FROM kodekloud/centos-systemd-ssh-enabled

RUN useradd loki && echo "loki:Mischi3f" | chpasswd

RUN usermod -G wheel loki

RUN yum install openssh-server openssh-clients -y

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN ssh-keygen -A

RUN yum install haproxy -y

ENV BIND_PORT $BIND_PORT
ENV WEB_APP1 $WEB_APP1
ENV WEB_APP2 $WEB_APP2
ENV WEB_APP3 $WEB_APP3
ENV WEB_APP1_PORT $WEB_APP1_PORT
ENV WEB_APP2_PORT $WEB_APP2_PORT
ENV WEB_APP3_PORT $WEB_APP3_PORT

COPY haproxy.conf /etc/

COPY entrypoint.sh /

EXPOSE ${BIND_PORT}

ENTRYPOINT /entrypoint.sh

