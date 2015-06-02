#!/bin/bash
set -xe

#add code to make sure the wheezy backports are available
sed -i 's|#deb http://ftp.debian.org/debian jessie-backports|deb http://ftp.debian.org/debian jessie-backports|g'  /etc/apt/sources.list
sed -i 's|#deb http://ftp.debian.org/debian wheezy-backports|deb http://ftp.debian.org/debian wheezy-backports|g'  /etc/apt/sources.list
