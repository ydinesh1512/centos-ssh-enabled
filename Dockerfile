FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN useradd natasha && echo "natasha:Bl@kW" | chpasswd

RUN usermod -G wheel natasha

RUN rm -rf /var/run/nologin
