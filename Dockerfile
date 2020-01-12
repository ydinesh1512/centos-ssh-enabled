FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd natasha && echo "natasha:Bl@kW" | chpasswd

RUN usermod -G wheel natasha

RUN rm -rf /var/run/nologin
