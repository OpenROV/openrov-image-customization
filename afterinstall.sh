#!/bin/bash
set -xe

for file in /opt/openrov/image-customization; do
  echo "Executing: $file"
  bash -xe $file
done
