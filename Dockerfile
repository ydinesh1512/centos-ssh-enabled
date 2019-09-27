FROM gcr.io/kodekloud/centos-ssh-enabled:master

RUN yum install -y sudo && yum clean all

RUN adduser webuser && echo 'webuser:webuser' | chpasswd && usermod -aG wheel webuser

RUN echo "webuser    ALL=(ALL)   NOPASSWD:ALL" >> /etc/sudoers

RUN rm -f /var/run/nologin

RUN yum install --downloadonly libselinux-python libsemanage-python firewalld httpd php php-mysql git