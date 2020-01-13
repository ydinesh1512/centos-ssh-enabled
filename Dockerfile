FROM  kodekloud/centos-systemd-ssh-enabled:nfsserver

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd natasha && echo "natasha:Bl@kW" | chpasswd

RUN usermod -G wheel natasha
