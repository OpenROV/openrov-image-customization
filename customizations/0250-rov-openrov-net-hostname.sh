#!/bin/bash
set -xe
cat /etc/hosts | grep 'rov.openrov.net' && exit 0

echo "192.168.254.1 rov.openrov.net" >> /etc/hosts