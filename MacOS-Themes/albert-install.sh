#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

#-------------------------------------------

# Install Curl
echo 'Installing Curl...'
sudo apt-get install -y curl

#-------------------------------------------

# Install Wget
echo 'Installing Wget...'
sudo apt-get install -y wget

#-------------------------------------------

# Install Albert with MacOS Big Sur Spotlight theme
echo 'Installing MacOS Big Sur Albert Spotlight...'
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt-get -y update
sudo apt-get install -y albert

#Load Albert settings
echo 'Loading Albert settings...'
sudo cp -v $WORKDIR/../MacOS-Themes/BigSur-Spotlight/BigSur_White.qss /usr/share/albert/org.albert.frontend.widgetboxmodel/themes/
cp -v $WORKDIR/../MacOS-Themes/BigSur-Spotlight/albert.conf $HOME/.config/albert/

# Launch Albert on Startup
ln -s /usr/share/applications/albert.desktop $HOME/.config/autostart/albert.desktop
