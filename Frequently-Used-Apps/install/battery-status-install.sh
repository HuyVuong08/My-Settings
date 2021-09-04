#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Install  Battery Status
echo 'Installing Battery Status for Battery Charging Level Limiter...'
sudo mkdir -p /opt/scripts/
sudo cp -v $WORKDIR/../../config/battery-status.sh /opt/scripts
sudo chmod +x /opt/scripts/battery-status.sh
if ! grep -Fxq "sh /opt/scripts/battery-status.sh &" /etc/profile
then
    echo -e '\nsh /opt/scripts/battery-status.sh &' | sudo tee --append /etc/profile >> /dev/null
fi
