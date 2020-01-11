FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN useradd clint && echo "clint:H@wk3y3" | chpasswd

RUN usermod -G wheel clint

RUN rm -rf /var/run/nologin
