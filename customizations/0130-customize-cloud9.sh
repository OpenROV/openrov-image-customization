#!/bin/bash
set -xe

sed -i 's/port: process.env.PORT || 3000/port: process.env.PORT || 3131/g' /opt/cloud9/build/standalonebuild/settings/standalone.js
