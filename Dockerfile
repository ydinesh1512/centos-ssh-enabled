FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN useradd loki && echo "loki:Mischi3f" | chpasswd

RUN usermod -G wheel loki

RUN rm -rf /var/run/nologin
