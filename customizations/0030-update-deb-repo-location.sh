#!/bin/bash
set -xe

sed  -i 's|build.openrov.com/debian|deb-repo.openrov.com|g' /etc/apt/sources.list.d/*
