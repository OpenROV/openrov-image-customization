#!/bin/bash
set -xe

cat /home/rov/.profile | grep '/opt/node/bin' && exit 0
echo "Include node in PATH"
echo "PATH=\$PATH:/opt/node/bin" >> /home/rov/.profile
