#!/bin/bash
set -xe

cat /etc/network/interfaces | grep 'address 192.168.254.1' && exit 0

## fix network

cat >> /etc/network/interfaces << __EOF__

auto eth0:0
iface eth0:0 inet static
name Ethernet alias LAN card
  address 192.168.254.1
  netmask 255.255.255.0
  broadcast 192.168.254.255
  network 192.168.254.0

__EOF__
