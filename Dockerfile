FROM gcr.io/kodekloud/centos-ssh-enabled:stbkp01

RUN yum install yum-utils createrepo -y

RUN yumdownloader bind-utils

RUN mkdir /packages

RUN yumdownloader samba httpd wget vim --destdir /packages/downloaded_rpms --resolve

RUN createrepo /packages/downloaded_rpms

RUN rm -rf /etc/yum.repos.d/*
