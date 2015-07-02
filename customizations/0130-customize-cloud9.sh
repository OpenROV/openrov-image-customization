#!/bin/bash
set -xe

#sed -i 's/port: process.env.PORT || 3000/port: process.env.PORT || 3131/g' /opt/cloud9/build/standalonebuild/settings/standalone.js
cp /lib/systemd/system/cloud9.service /etc/systemd/system
cp /lib/systemd/system/cloud9.socket /etc/systemd/system
sed -i 's|/var/lib/cloud9|/opt/openrov|g' /etc/systemd/system/cloud9.service
sed -i 's|3000|3131|g' /etc/systemd/system/cloud9.socket
systemctl daemon-reload
