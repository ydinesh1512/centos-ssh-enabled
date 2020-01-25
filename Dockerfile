FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd steve && echo "steve:Am3ric@" | chpasswd

RUN usermod -G wheel steve

RUN yum install openssh-clients -y

RUN rm -rf /var/run/nologin
