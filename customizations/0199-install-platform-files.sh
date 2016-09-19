#!/bin/bash
set -xe

echo "------------------------------------------"
echo "Installing cockpit files for this platform"
echo "------------------------------------------"

# Add platform.conf file to /opt/openrov/system/config/
# Note: This is custom for each platform!
if [ "$RESIN_PLATFORM" = "beaglebone" ]; then
platform="beaglebone"
else
platform="raspberrypi"
fi

cat <<__EOF__ > /opt/openrov/system/config/platform.conf
{
	"platform": "$platform"
}
__EOF__

# Call the Installer for this platform
node /opt/openrov/cockpit/src/system-plugins/platform-manager/Install.js

# Make all scripts executable
chmod +x /opt/openrov/system/scripts/*



