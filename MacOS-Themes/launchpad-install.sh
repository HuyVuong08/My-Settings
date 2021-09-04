#!/bin/bash

#-------------------------------------------

# Install Curl
echo "Installing Curl..."
sudo apt-get install -y curl

#-------------------------------------------

# Install Launch Pad
echo 'Installing macOS Launch Pad...'
sudo apt-get install -y xdotool
curl https://raw.githubusercontent.com/milan102/Ubuntu-Launchpad/master/launchpad-1.0.deb --output 'launchpad-1.0.deb'
sudo apt-get install -y ./launchpad-1.0.deb
rm launchpad-1.0.deb
