#!/bin/bash
set -xe
if [ "$RESIN_PLATFORM" = "beaglebone" ]; then
echo -----------------------------
echo Setting up performance power govenor
echo -----------------------------

sed -i 's/^GOVERNOR=.*/GOVERNOR="performance"/' /etc/init.d/cpufrequtils
fi