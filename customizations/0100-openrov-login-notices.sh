#!/bin/bash
set -xe

cat /etc/issue | grep 'http://openrov.com' && exit 0


cat > /etc/issue << __EOF__
____                ___  ____ _   __
/ __ \___  ___ ___  / _ \/ __ \ | / /
/ /_/ / _ \/ -_) _ \/ , _/ /_/ / |/ /
\____/ .__/\__/_//_/_/|_|\____/|___/
  /_/

Software Version 30.1.0 [master]

rcn-ee.net console Debian Image 2015-05-08

Support/FAQ: http://openrov.com

default username:password is [rov:OpenROV]
__EOF__

cp /etc/issue /etc/issue.net
