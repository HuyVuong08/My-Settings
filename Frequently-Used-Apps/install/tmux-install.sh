#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Install Git
echo 'Installing Git...'
sudo apt-get install -y git

#-------------------------------------------

# Install tmux
echo 'Installing Tmux...'
sudo apt-get install -y tmux

#-------------------------------------------

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#Load .tmux.conf
echo Loading .tmux.conf...
result=$(cp -vn $WORKDIR/.tmux.conf $HOME)
if [ "$result" = "" ]
then
    echo -e "File already exist. Abort..."
fi

# Source configuration file
tmux source ~/.tmux.conf
