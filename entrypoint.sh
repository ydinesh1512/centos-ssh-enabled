#!/bin/sh

/usr/sbin/sshd -D &
haproxy -f /etc/haproxy.conf

