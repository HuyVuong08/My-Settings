#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Install Snap
echo 'Installing Snap...'
sudo apt-get install -y snap

# Install Adobe Acrobat
echo 'Installing Adobe Acrobat...'
sudo snap install acrordrdc
