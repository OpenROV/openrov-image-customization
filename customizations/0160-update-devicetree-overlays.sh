#!/bin/bash
set -xe
SCRIPT_PATH="`dirname \"$BASH_SOURCE\"`"

echo "Creating OpenROV device tree overlays"
dtc -O dtb -o /lib/firmware/OPENROV-RESET-00A0.dtbo -b 0 $SCRIPT_PATH/../device-tree-overlays/OPENROV-RESET-00A0.dts  
dtc -O dtb -o /lib/firmware/BB-SPI0DEV-00A0.dtbo -b 0 $SCRIPT_PATH/../device-tree-overlays/BB-SPI0DEV-00A0.dts  
echo "Done creating device tree overlays"
