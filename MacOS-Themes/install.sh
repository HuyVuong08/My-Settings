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
#
##-------------------------------------------
#
##Install Albert Spootlight theme
#
#curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
#echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
#sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
#sudo apt update
#sudo apt install albert

#-------------------------------------------

#Install Wallpaper

curl https://512pixels.net/wp-content/uploads/2020/06/11-0-Color-Night-thumbnails-500x500.jpg -o 'BigSurr-Color-Night.jpg'
curl https://512pixels.net/wp-content/uploads/2020/06/11-0-Night-thumbnail-500x500.jpg -o 'BigSur-Night.jpg'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Peak-2-dragged.jpg -o 'BigSur-Peak'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Valley-2-dragged.jpg -o 'BigSur-Valley'
