#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Intall acpi to display acpi' devices infomation
sudo apt-get install -y acpi

# Install  Battery Status
echo 'Installing Battery Status for Battery Charging Level Limiter...'
sudo mkdir -p /opt/scripts/
sudo cp -vn $WORKDIR/../../config/battery-status.sh /opt/scripts
sudo chmod +x /opt/scripts/battery-status.sh
if ! grep -Fxq "bash /opt/scripts/battery-status.sh &" /etc/profile
then
    echo -e '\nbash /opt/scripts/battery-status.sh &' | sudo tee --append /etc/profile >> /dev/null
fi
