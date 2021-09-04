#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Install Curl
echo 'Installing Curl...'
sudo apt-get install -y curl

#-------------------------------------------

# Install Google Chrome
echo 'Installing Google Chrome...'
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output 'google-chrome-stable_current_amd64.deb'

sudo apt-get install -y $WORKDIR/google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
