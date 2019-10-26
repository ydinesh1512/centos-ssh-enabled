FROM gcr.io/kodekloud/centos-ssh-enabled:master
ENV container docker

# For service command
RUN yum -y install lvm2 e4fsprogs

RUN sed -i 's/udev_sync = 1/udev_sync = 0/g' /etc/lvm/lvm.conf
RUN sed -i 's/udev_rules = 1/udev_rules = 0/g' /etc/lvm/lvm.conf
RUN pvcreate /dev/vdb1

EXPOSE 22

VOLUME [ "/sys/fs/cgroup" ]
ENTRYPOINT ["/usr/sbin/init"]
CMD ["/usr/sbin/sshd", "-D"]
