FROM gcr.io/kodekloud/centos-ssh-enabled:master
RUN sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config
RUN useradd tony && echo "tony:Ir0nM@n" | chpasswd
RUN useradd eric && echo "eric:eric" | chpasswd
RUN useradd jerome && echo "jerome:jerome" | chpasswd
RUN usermod -G wheel tony
RUN usermod -G wheel eric
RUN usermod -G wheel jerome
RUN rm -rf /var/run/nologin
