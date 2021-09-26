#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

#-------------------------------------------

# Install Gnome Tweak Tool
echo 'Installing Gnome Tweak Tool...'
sudo apt-get install -y gnome-tweak-tool

#-------------------------------------------

# Install Shell Extensions
echo 'Installing Shell Extensions...'
sudo apt-get install -y gnome-shell-extensions

#-------------------------------------------

# Install Git
echo 'Installing Git...'
sudo apt-get install -y git

#-------------------------------------------

# Install GTK themes
echo 'Installing MacOS Big Sur GTK Themes...'
(
    cd $WORKDIR
    git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
    sudo $WORKDIR/WhiteSur-gtk-theme/install.sh --dest '/usr/share/themes/' --opacity 'normal' --monterey  --highdefinition --roundedmaxwindow --nautilus-style 'stable'
    sudo $WORKDIR/WhiteSur-gtk-theme/tweaks.sh --firefox 'monterey' --color 'dark' --theme 'default' --panel-size 'default' --icon 'standard'
    sudo $WORKDIR/WhiteSur-gtk-theme/tweaks.sh --gdm 'default'

    # Remove WhiteSur-gtk-theme folder
    # rm -rf WhiteSur-gtk-theme
)

#-------------------------------------------

# Install Icon themes
echo 'Installing MacOS Big Sur Icon Themes...'
(
    cd $WORKDIR
    git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
    sudo $WORKDIR/WhiteSur-icon-theme/install.sh -d '/usr/share/icons/'

    # Remove WhiteSur-icon-theme folder
    # rm -rf WhiteSur-icon-theme
)