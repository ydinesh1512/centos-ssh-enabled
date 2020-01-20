FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd tony && echo "tony:Ir0nM@n" | chpasswd

RUN usermod -G wheel tony

RUN rm -rf /var/run/nologin
