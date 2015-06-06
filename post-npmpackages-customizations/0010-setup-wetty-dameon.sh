#!/bin/bash
set -xe

if [ -f /etc/init.d/wetty ]; then
  exit 0
fi

echo "set the wetty startup service"
ln -s /opt/openrov/openrov-image-customization/wetty.service /etc/init.d/wetty
chmod +x /opt/openrov/openrov-image-customization/wetty.service
update-rc.d wetty defaults
