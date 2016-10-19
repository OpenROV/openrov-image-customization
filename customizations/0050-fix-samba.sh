#!/bin/bash
set -xe

#No longer shipping with Samba installed
exit 0 
# Samba doesn't start on the chroot, we need to add an config section and reconfigure it, otherwise the openrov-samba-config packages failes to install
#echo Fixing samba
#sed -i '/interfaces =/a interfaces = lo' /etc/samba/smb.conf
#sed -i '0,/interfaces =/{//d;}' /etc/samba/smb.conf
#dpkg --configure samba

#/etc/init.d/samba stop

#!/bin/bash
set -x
set -e

cat /etc/samba/smb.conf | grep 'OpenROV' && exit 0

echo "Ensure samaba lock folder exists"
mkdir -p /var/run/samba

echo "Setting up OpenROV samba configuration"
cat >> /etc/samba/smb.conf << __EOF__
[OpenROV]
comment = OpenROV Cockpit
path = /
force user = rov
force group = admin
read only = No
guest ok = Yes
__EOF__

sed -i 's|log/samba|log|g'  /etc/samba/smb.conf

#testparm -s ../smb.conf.openrov > /etc/samba/smb.conf

#echo "Disable samba startup on system startup"
#systemctl disable samba.service
