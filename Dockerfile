FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config

RUN useradd groot && echo "groot:Gr00T123" | chpasswd

RUN usermod -G wheel groot

RUN yum -y install postfix

CMD sed -i 's/#inet_interfaces = all/inet_interfaces = all/g' /etc/postfix/main.cf 
