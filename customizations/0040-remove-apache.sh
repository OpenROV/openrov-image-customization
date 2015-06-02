#!/bin/bash
set -xe
dpkg --list | grep 'apache2' && sudo apt-get -y remove apache2
