#!/bin/bash

WORKDIR="$(pwd)"

# Install GTK themes
echo 'Installing MacOS Big Sur GTK Themes ...'
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd $WORKDIR/WhiteSur-gtk-theme
sudo ./install.sh --dest '/usr/share/themes/' --opacity 'normal' --monterey  --highdefinition --roundedmaxwindow
sudo ./install.sh --dest '/usr/share/themes/' --opacity 'normal' --nautilus-style 'stable'
sudo ./tweaks.sh --firefox 'monterey' --gdm 'x2' --color 'dark' --theme 'default' --panel-size 'default' --icon 'standard'
cd $WORKDIR

# Remove WhiteSur-gtk-theme folder
# rm -rf WhiteSur-gtk-theme
