FROM kodekloud/centos-ssh-enabled

RUN yum install -y sudo && yum clean all

RUN adduser ansible && echo 'ansible' | passwd ansible && usermod -aG wheel ansible
