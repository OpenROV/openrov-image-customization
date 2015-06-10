#!/bin/bash
set -xe


#prep for nodejs
#apt-get install -y curl
#curl -sL https://deb.nodesource.com/setup | bash -
wget -qO- https://deb.nodesource.com/setup | bash -

#remove apache2
#apt-get remove -y apache2
