#!/bin/bash
set -xe

echo -----------------------------
echo Setting up network
echo -----------------------------

set -i 's/arm/OpenROV/g' /etc/hosts
set -i 's/arm/OpenROV/g' /etc/hostname
set -i 's/beaglebone/OpenROV/g' /etc/hosts
set -i 's/beaglebone/OpenROV/g' /etc/hostname
