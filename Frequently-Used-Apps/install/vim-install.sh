#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

#-------------------------------------------

# Install Curl
echo Installing Curl...
sudo apt-get install -y curl

#-------------------------------------------

# Install Vim and Necessary Packages
echo Installing Vim and Necessary Packages...

# Install Vim
sudo apt-get install -y vim

# Install Vim GTK3 for copying to clipboard from vim
sudo apt-get install -y vim-gtk3

#-------------------------------------------

# Install Vim Plug Plugin Manager
echo Installing Vim Plug Plugin Manager...
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#-------------------------------------------

# Load Vim Configuration Files
echo Loading Vim Configuration Files...

echo Loading .vimrc...
cp -v $WORKDIR/../../config/.vimrc $HOME

#Load .gvimrc
echo Loading .gvimrc...
cp -v $WORKDIR/../../config/.gvimrc $HOME

#-------------------------------------------

# Install Vim Setups and Pluggins
echo Installing Vim Setups and Pluggins...

# Remove Existing YouCompleteMe if any Before Re-install It
sudo rm -rf $HOME/.vim/plugged/YouCompleteMe

# Source .vimrc
vim -c -y "source $MYVIMRC" -c qa

# Install Pluggins
vim -c "PlugInstall" -c qa

# Install YouCompleteMe
echo Installing YouCompleteMe...
sudo apt-get install -y build-essential cmake vim-nox python3-dev
sudo apt-get install -y mono-complete golang nodejs default-jdk npm
(
    cd $HOME/.vim/plugged/YouCompleteMe
    python3 install.py --clangd-completer
    python3 install.py --all
)

# Install Exuberant Ctags
echo Installing Exuberant-ctags...
sudo apt-get install -y exuberant-ctags

# Install Ack-Grep
echo Installing Ack-grep...
sudo apt-get install -y ack-grep

# Install Hexoknase for RGB Color Code Illustrator
( cd $HOME/.vim/plugged/vim-hexokinase/ && make hexokinase )

# Install code-minimap
sudo apt-get install -y cargo
cargo install --locked code-minimap
sudo apt-get install -y minimap

# Install Prettier Formater
sudo apt install -y npm
sudo npm install -g prettier

# Install javascript and typescript Language Server
sudo apt install -y npm
sudo npm install -g javascript-typescript-langserver
