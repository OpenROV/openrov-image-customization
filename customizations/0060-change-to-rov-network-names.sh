#!/bin/bash
set -xe
echo -----------------------------
echo Setting up network
echo -----------------------------

cat /etc/hosts | grep 'OpenROV' && exit 0

#fix hostname
echo OpenROV > /etc/hostname

cat > /etc/hosts << __EOF__
127.0.0.1       localhost
127.0.1.1       OpenROV
__EOF__
