FROM gcr.io/kodekloud/centos-ssh-enabled:stapp03

RUN yum install unzip -y

COPY latest.zip /var/www/html/

RUN unzip /var/www/html/latest.zip -d /var/www/html/

RUN rm -rf /var/www/html/latest.zip
