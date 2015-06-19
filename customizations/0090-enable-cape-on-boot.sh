#!/bin/bash
set -xe
pushd /opt
git clone https://github.com/RobertCNelson/dtb-rebuilder
cd dtb-rebuilder/
git checkout origin/3.14-ti

sed -i 's|/\* #include "am335x-bone-spi0-spidev\.dtsi" \*/|#include "am335x-bone-spi0-spidev\.dtsi"|g' src/arm/am335x-boneblack.dts
sed -i 's|/\* #include "am335x-bone-ttyO1\.dtsi" \*/|#include "am335x-bone-ttyO1\.dtsi"|g' src/arm/am335x-boneblack.dts
make
sudo make install
