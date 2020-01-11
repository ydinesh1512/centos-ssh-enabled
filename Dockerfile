FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN useradd peter && echo "peter:Sp!dy" | chpasswd

RUN usermod -G wheel peter

RUN rm -rf /var/run/nologin
