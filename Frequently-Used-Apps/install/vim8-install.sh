#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

#-------------------------------------------

# Delete the original vim package
echo 'Deleting the original vim package...'
sudo apt-get remove -y --purge vim vim-runtime vim-gnome vim-tiny vim-common vim-gui-common

# Install Vim dependency
echo 'Installing Vim dependency...'
sudo apt-get install -y liblua5.1-dev luajit libluajit-5.1 python-dev libperl-dev libncurses5-dev ruby-dev

# Delete the previously compiled Vim installation file
echo 'Deleting the previously compiled Vim installation file...'
sudo rm -rf /usr/local/share/vim
sudo rm /usr/bin/vim

# Compile and install Vim
echo 'Compiling and installing Vim...'
(
cd $HOME
git clone https://github.com/vim/vim
cd vim
./configure --with-features=huge \
            --enable-largefile \
            --enable-multibyte \
            --enable-fail-if-missing \
            \
            --enable-rubyinterp \
            --with-ruby-command=$(which ruby) \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-gui=auto --enable-cscope
make
sudo make install
rm -rf vim
)
