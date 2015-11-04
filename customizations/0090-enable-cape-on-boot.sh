#!/bin/bash

#temporarily disable as we prep for the latest kernel
exit 0

pushd /opt/dtb-rebuilder
sed -i 's|/\* #include "am335x-bone-spi0-spidev\.dtsi" \*/|#include "am335x-bone-spi0-spidev\.dtsi"|g' src/arm/am335x-boneblack.dts
sed -i 's|/\* #include "am335x-bone-ttyO1\.dtsi" \*/|#include "am335x-bone-ttyO1\.dtsi"|g' src/arm/am335x-boneblack.dts
make
sudo make install
popd
