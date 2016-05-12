#!/bin/bash
set -xe

echo -----------------------------
echo Setting up performance power govenor
echo -----------------------------

sed -i 's/^GOVERNOR=.*/GOVERNOR="performance"/' /etc/init.d/cpufrequtils
