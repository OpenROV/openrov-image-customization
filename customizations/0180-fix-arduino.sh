# This is a temporary work around for the Arduino robot_control failures that happen.
# It should be removed once @spidekeys new arduino builder is integrated

#!/bin/bash
set -xe

cat /usr/share/arduino/lib/version.txt | grep '2:1.0.5+dfsg2-4' || exit 0

echo ------------------------------
echo Fixing arduino

#fix arduino library source
pushd /usr/share/arduino/
rm -r libraries
wget https://github.com/OpenROV/openrov-image/raw/master/contrib/Arduino-1.0.4-libraries.tgz
tar zxf Arduino-1.0.4-libraries.tgz
popd

#fix arduino version
echo 1.0.5 > /usr/share/arduino/lib/version.txt
