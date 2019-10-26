FROM gcr.io/kodekloud/centos-ssh-enabled:master
ENV container docker

# For service command
RUN yum install -y lvm2 
RUN yum install -y e4fsprogs

RUN sed -i "s/udev_sync = 1/udev_sync = 0/g" /etc/lvm/lvm.conf
RUN sed -i "s/udev_rules = 1/udev_rules = 0/g" /etc/lvm/lvm.conf

EXPOSE 22

ENTRYPOINT ["/usr/sbin/init"]
CMD ["/usr/sbin/sshd", "-D"]
