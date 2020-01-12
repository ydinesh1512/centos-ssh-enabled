FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd peter && echo "peter:Sp!dy" | chpasswd

RUN usermod -G wheel peter

RUN rm -rf /var/run/nologin
