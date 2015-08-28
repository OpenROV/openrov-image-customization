#!/bin/bash
set -xe

if [ `find your/dir -prune -empty` ]
then
exit 0
else
sed  -i 's|build.openrov.com/debian|deb-repo.openrov.com|g' /etc/apt/sources.list.d/*
fi
