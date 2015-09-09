#!/bin/bash
set -xe

for file in /opt/openrov/image-customization/customizations/*; do
  echo "Executing: $file"
  bash -xe $file
done


pushd /opt/openrov/image-customization
ls /usr/bin
whereis npm
# Double check the npm version (Must be 2.9.0 or higher)
npm --version

# Working around current issue with root id qemu error with the package-script
# /usr/bin/npm install --unsafe-perm

popd


#for file in /opt/openrov/image-customization/post-npmpackages-customizations/*; do
#  echo "Executing: $file"
#  bash -xe $file
#done


if [ "$(stat -c %d:%i /)" != "$(stat -c %d:%i /proc/1/root/.)" ]; then
  echo "We are chrooted!"
else
  #flush all buffers to disk
  sync
  #blockdev --flushbufs /dev/root
fi
