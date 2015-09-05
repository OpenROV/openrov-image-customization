#!/bin/bash
exit 0 #need to double check the device tree on this image
set -xe
wget https://github.com/RobertCNelson/dtb-rebuilder/tarball/3.14-ti
tar xpvf 3.14-ti
if [ -d "/opt/dtb-rebuilder" ]; then
  rm -rf /opt/dtb-rebuilder/
fi

mv RobertCNelson-dtb-rebuilder-* /opt/dtb-rebuilder

pushd /opt/dtb-rebuilder
sed -i 's|/\* #include "am335x-bone-spi0-spidev\.dtsi" \*/|#include "am335x-bone-spi0-spidev\.dtsi"|g' src/arm/am335x-boneblack.dts
sed -i 's|/\* #include "am335x-bone-ttyO1\.dtsi" \*/|#include "am335x-bone-ttyO1\.dtsi"|g' src/arm/am335x-boneblack.dts
make
sudo make install
popd
