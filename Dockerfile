FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd banner && echo "banner:BigGr33n" | chpasswd

RUN usermod -G wheel banner

RUN yum install openssh-clients -y

RUN rm -rf /var/run/nologin
