#!/bin/bash

if [[ $EUID -eq 0 ]]; then
    echo "This script should NOT be run as root" 1>&2
    exit 1
fi

# Save Working Directory
WORKDIR="$(dirname "$(readlink -f "$0")")"

#Update
echo "Updating..."
sudo apt-get -y update

echo "Installing macOS theme..."

#-------------------------------------------

# Install Plank Dock
bash plank-dock-install.sh

#-------------------------------------------

# Install GTK themes
bash gtk-and-icon-theme-install.sh

#-------------------------------------------

# Install Albert with MacOS Big Sur Spotlight theme
bash albert-install.sh

#-------------------------------------------

# Config blank screen and locking mechanism
gsettings set org.gnome.desktop.session idle-delay $((5*60))
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.screensaver lock-delay 2

#-------------------------------------------

# Config lid closing to lock

sudo sed -i '/#HandleLidSwitch=/s/suspend/lock/' /etc/systemd/logind.conf
sudo sed -i '/HandleLidSwitch=/s/^#//g' /etc/systemd/logind.conf

#-------------------------------------------

# Disable sleep, suspend, hibernate and hybird features
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

#-------------------------------------------

# Install Wallpaper
bash wallpaper-install.sh

#-------------------------------------------

# Install Plymouth theme

#-------------------------------------------

# Install Launch Pad
bash launchpad-install.sh

#-------------------------------------------

# Install imagemagick
bash apple-exclusive-apps-install.sh
