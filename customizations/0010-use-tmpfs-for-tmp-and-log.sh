#!/bin/bash
set -xe

cat /etc/fstab | grep '/tmp' && exit 0

echo "tmpfs   /tmp         tmpfs   nodev,nosuid          0  0" >> /etc/fstab
echo "tmpfs   /var/log         tmpfs   nodev,nosuid          0  0" >> /etc/fstab
