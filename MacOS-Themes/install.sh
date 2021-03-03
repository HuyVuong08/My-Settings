#!/bin/bash

##Update
#sudo apt-get update -y
#
##-------------------------------------------
#
##Install Curl
#sudo apt-get install -y curl
#
##-------------------------------------------
#
##Install Git
#
#sudo apt-get install -y git
#
##-------------------------------------------
#
##Install Plank Dock
#sudo apt-get install -y plank
#
#-------------------------------------------
#
##Install Requirements and Dependencies
#
#sudo apt-get install -y gtk2-engines-murrine
#sudo apt-get install -y gtk2-engines-pixbuf
#
#sudo apt-get install -y sassc
#sudo apt-get install -y optipng
#sudo apt-get install -y inkscape
#sudo apt-get install -y libglib2.0-dev-bin
#
##-------------------------------------------
#
##Install GTk Themes
#
#git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
#cd WhiteSur-gtk-theme
#sudo ./install.sh -d '/usr/share/themes/' -o 'standard' -s '260'
#sudo ./install.sh -d '/usr/share/themes/' -o 'standard' --nautilus-use-colors
#sudo ./install.sh -g -c 'light'
#sudo ..
#
##-------------------------------------------
#
##Install Icon Themes
#
#git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
#cd WhiteSur-icon-theme
#sudo ./install.sh -d '/usr/share/icons/'
#cd ..
#
##-------------------------------------------
#
##Install Firefox Themes
#
#mv WhiteSur-gtk-theme/src/other/firefox/chrome $HOME/.mozilla/firefox/*.default-release
#
##-------------------------------------------
#
##Install Plank Dock Themes
#
##Install Dark Themes
#sudo mkdir /usr/share/plank/themes/macOS-BigSur-dark && sudo mv WhiteSur-gtk-theme/src/other/plank/theme-dark/* $_
#
##Install Light Themes
#sudo mkdir /usr/share/plank/themes/macOS-BigSur-light && sudo mv WhiteSur-gtk-theme/src/other/plank/theme-light/* $_
