#!/bin/bash
set -xe
dpkg --list | grep 'apache2' && apt-get -y remove apache2
