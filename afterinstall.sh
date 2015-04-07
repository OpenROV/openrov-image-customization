#!/bin/bash
set -xe

for file in /opt/openrov/image-customization/customizations/*; do
  echo "Executing: $file"
  bash -xe $file
done
