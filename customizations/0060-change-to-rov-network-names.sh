#!/bin/bash
set -xe

 -----------------------------
echo Setting up network
echo -----------------------------

set -i 's/arm/OpenROV/g' /etc/hosts
set -i 's/arm/OpenROV/g' /etc/hostname
