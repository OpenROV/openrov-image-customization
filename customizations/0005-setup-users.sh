#!/bin/bash
set -xe

echo Setting up users
echo -----------------------------

id -u rov
if [ ($?) -eq 1 ]; then
  echo Adding user 'rov'
  useradd rov -m -s /bin/bash -g admin
  echo rov:OpenROV | chpasswd

echo "rov ALL=NOPASSWD: /opt/openrov/cockpit/linux/" >> /etc/sudoers
echo "rov ALL=NOPASSWD: /opt/openrov/dashboard/linux/" >> /etc/sudoers
fi

id -u ubuntu
if [ ($?) -eq 0 ]; then
  userdel -r -f ubuntu

  echo -----------------------------
  echo Cleanup home directory
  echo -----------------------------
  cd /home
  find . -type d -not -name rov -and -not -name . | xargs rm -rf
fi
