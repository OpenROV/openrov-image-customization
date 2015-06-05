#!/bin/bash
set -xe
#temp disable
exit 0
 -----------------------------
echo Setting up network
echo -----------------------------

cat /etc/hosts | grep 'OpenROV' && exit 0

#fix hostname
echo OpenROV > /etc/hostname

cat > /etc/hosts << __EOF__
127.0.0.1	localhost
127.0.1.1	openrov.localdomain	openrov

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
__EOF__
