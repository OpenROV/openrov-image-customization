#!/bin/bash
set -xe
# Samba doesn't start on the chroot, we need to add an config section and reconfigure it, otherwise the openrov-samba-config packages failes to install
#echo Fixing samba
#sed -i '/interfaces =/a interfaces = lo' /etc/samba/smb.conf
#sed -i '0,/interfaces =/{//d;}' /etc/samba/smb.conf
#dpkg --configure samba

#/etc/init.d/samba stop
