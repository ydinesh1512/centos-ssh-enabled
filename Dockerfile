FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN useradd banner && echo "banner:BigGr33n" | chpasswd

RUN usermod -G wheel banner

RUN rm -rf /var/run/nologin
