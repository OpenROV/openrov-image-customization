#!/bin/bash
set -xe

echo Setting up users
echo -----------------------------


if ! id -u rov > /dev/null 2>&1; then
  echo Adding user 'rov'
  useradd rov -m -s /bin/bash -g admin
  echo rov:OpenROV | chpasswd

echo "rov ALL=NOPASSWD: /opt/openrov/cockpit/linux/" >> /etc/sudoers
echo "rov ALL=NOPASSWD: /opt/openrov/dashboard/linux/" >> /etc/sudoers
fi

if id -u ubuntu > /dev/null 2>&1; then
  userdel -r -f ubuntu

  echo -----------------------------
  echo Cleanup home directory
  echo -----------------------------
  cd /home
  find . -type d -not -name rov -and -not -name . | xargs rm -rf
fi
