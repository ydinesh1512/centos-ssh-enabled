FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd clint && echo "clint:H@wk3y3" | chpasswd

RUN usermod -G wheel clint

RUN rm -rf /var/run/nologin

RUN yum install -y openssh-clients
