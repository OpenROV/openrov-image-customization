#!/bin/bash
set -xe

cat > /etc/dnsmasq.d/eth0-dhcp << __EOF__
#disable DNS by setting port to 0
#port=0

interface=eth0
#one address range
dhcp-range=192.168.254.10,192.168.254.20

dhcp-option=3
except-interface=lo
listen-address=192.168.254.1
bind-interfaces
__EOF__
