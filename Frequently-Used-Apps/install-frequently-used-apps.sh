#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

bash $WORKDIR/install/battery-status-install.sh
bash $WORKDIR/install/chrome-install.sh
bash $WORKDIR/install/create-swapfiles.sh
bash $WORKDIR/install/curl-install.sh
bash $WORKDIR/install/flameshot-install.sh
bash $WORKDIR/install/git-install.sh
bash $WORKDIR/install/gparted-install.sh
bash $WORKDIR/install/hdsentinel-install.sh
bash $WORKDIR/install/ibus-unikey-install.sh
bash $WORKDIR/install/latex-install.sh
bash $WORKDIR/install/libinput-guesture-install.sh
bash $WORKDIR/install/mdless-install.sh
bash $WORKDIR/install/paint-install.sh
bash $WORKDIR/install/screen-recorder-install.sh
bash $WORKDIR/install/stopwatch-install.sh
bash $WORKDIR/install/team-viewer-install.sh
bash $WORKDIR/install/unusedpkg-install.sh
bash $WORKDIR/install/vim-install.sh
bash $WORKDIR/install/wps-office-install.sh
