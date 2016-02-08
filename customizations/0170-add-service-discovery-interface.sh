#!/bin/bash
set -xe

cat /etc/network/interfaces.d/* | grep 'address dummy' && exit 0

## fix network

echo "dummy" >> /etc/modules-load.d/modules.conf

cat >> /etc/network/interfaces.d/dummy0.cfg << __EOF__

auto dummy0
iface dummy0 inet static
address 10.0.0.1
netmask 255.255.255.0
multicast

__EOF__
