#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Upgrade
echo 'Upgrading ...'
sudo apt-get -y upgrade

#-------------------------------------------

# Update
echo 'Updating ...'
sudo apt-get -y update

#-------------------------------------------

#bash $WORKDIR/install/battery-status-install.sh
bash $WORKDIR/install/cat-with-color-install.sh
bash $WORKDIR/install/chrome-install.sh
bash $WORKDIR/install/create-swapfiles.sh
bash $WORKDIR/install/curl-install.sh
bash $WORKDIR/install/flameshot-install.sh
bash $WORKDIR/install/git-install.sh
bash $WORKDIR/install/gparted-install.sh
bash $WORKDIR/install/ibus-unikey-install.sh
bash $WORKDIR/install/libinput-guesture-install.sh
bash $WORKDIR/install/mdless-install.sh
bash $WORKDIR/install/stopwatch-install.sh
bash $WORKDIR/install/team-viewer-install.sh
bash $WORKDIR/install/unusedpkg-install.sh
bash $WORKDIR/install/vim-install.sh
bash $WORKDIR/install/wps-office-install.sh
bash $WORKDIR/install/ros-install.sh
