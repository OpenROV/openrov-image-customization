#!/bin/bash
set -xe
#dpkg --list | grep 'apache2' && apt-get -y remove apache2
dpkg --list | grep 'apache2' && echo "We should remove apache to make space."
