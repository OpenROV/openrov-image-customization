#!/bin/bash
set -xe

cat /etc/modprobe.d/uvcvideo.conf | grep 'nodrop=1' && exit 0

echo "options uvcvideo nodrop=1 timeout=6000" >> /etc/modprobe.d/uvcvideo.conf