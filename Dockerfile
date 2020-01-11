FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN useradd steve && echo "steve:Am3ric@" | chpasswd

RUN usermod -G wheel steve

RUN rm -rf /var/run/nologin
