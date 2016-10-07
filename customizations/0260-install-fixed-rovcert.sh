#!/bin/bash
set -xe

wget -O /etc/openrov/star_openrov_net.key  https://s3-us-west-2.amazonaws.com/openrov-software-nightlies/certs/rov-openrov.net.key
wget -O /etc/openrov/STAR_openrov_net.chained.crt  https://s3-us-west-2.amazonaws.com/openrov-software-nightlies/certs/rov_openrov_net.chained.crt