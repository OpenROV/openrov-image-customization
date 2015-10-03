#!/bin/bash
set -xe

sed -i 's/FSCKFIX=no/FSCKFIX=yes/g' /lib/init/vars.sh
