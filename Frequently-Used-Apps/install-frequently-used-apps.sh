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

bash $WORKDIR/install/battery-status-install.sh
bash $WORKDIR/install/beyond-compare-install.sh
bash $WORKDIR/install/redshift-install.sh
bash $WORKDIR/install/chrome-install.sh
bash $WORKDIR/install/vs-code-install.sh
bash $WORKDIR/install/cat-with-color-install.sh
bash $WORKDIR/install/discord-install.sh
bash $WORKDIR/install/temperature-sensors-monitor.sh
bash $WORKDIR/install/create-swapfiles.sh
bash $WORKDIR/install/curl-install.sh
bash $WORKDIR/install/flameshot-install.sh
bash $WORKDIR/install/git-install.sh
bash $WORKDIR/install/gparted-install.sh
bash $WORKDIR/install/ibus-unikey-install.sh
bash $WORKDIR/install/libinput-guesture-install.sh
bash $WORKDIR/install/meld-compare-install.sh
bash $WORKDIR/install/mdless-install.sh
bash $WORKDIR/install/slim-book-battery-install.sh
bash $WORKDIR/install/stopwatch-install.sh
bash $WORKDIR/install/team-viewer-install.sh
bash $WORKDIR/install/unusedpkg-install.sh
bash $WORKDIR/install/vim-install.sh
bash $WORKDIR/install/telegram-install.sh
bash $WORKDIR/install/tmux-install.sh
bash $WORKDIR/install/wps-office-install.sh
