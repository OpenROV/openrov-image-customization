#!/bin/bash
set -xe

cat /etc/sysctl.conf | grep '# Injected by OpenROV_Customize_Image' && exit(0)

echo "# Injected by OpenROV_Customize_Image" >> /etc/sysctl.conf
echo "vm.dirty_background_ratio = 5" >> /etc/sysctl.conf
echo "vm.dirty_ratio = 10" >> /etc/sysctl.conf
echo "# End Injected by OpenROV_Customize_Image" >> /etc/sysctl.conf
