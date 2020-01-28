FROM gcr.io/kodekloud/centos-ssh-enabled:stbkp01

RUN rm -rf /etc/yum.repos.d/*   

RUN yum install yum-utils -y

RUN yumdownloader bind-utils

RUN mkdir /packages

RUN yumdownloader samba httpd wget vim --destdir /packages/downloaded_rpms --resolve



