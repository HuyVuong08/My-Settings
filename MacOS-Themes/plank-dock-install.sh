#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

#-------------------------------------------

# Install Plank Dock
echo "Installing Plank Dock..."
sudo apt-get install -y plank

# Launch Plank Dock on Startup
ln -s /usr/share/applications/plank.desktop $HOME/.config/autostart/plank.desktop

# Install Plank Dock themes
echo 'Installing MacOS Big Sur Plank Dock Themes...'
sudo mkdir -p /usr/share/plank/themes/macOS-BigSur/
sudo cp -v $WORKDIR/BigSur-Dock/dock.theme /usr/share/plank/themes/macOS-BigSur/
