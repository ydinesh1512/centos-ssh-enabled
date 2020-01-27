FROM  kodekloud/centos-systemd-ssh-enabled

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd natasha && echo "natasha:Bl@kW" | chpasswd

RUN usermod -G wheel natasha

RUN yum install -y sudo nfs-utils

RUN mkdir /data

