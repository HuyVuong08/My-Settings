#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Install Git
echo 'Installing Git...'
sudo apt-get install -y git

#-------------------------------------------

# Install Tmux Plugin Manager

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source ~/.tmux.conf
