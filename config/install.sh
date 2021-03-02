#!/bin/bash

#Update
sudo apt-get -y update

#-------------------------------------------

#Install git
sudo apt-get install -y git

#Set your global user name and email
git config --global user.name "HuyVuong08"
git config --global user.email "huy.vuongle123@gmail.com"

#-------------------------------------------

#Install xdotool and libinput-tools
sudo apt-get install -y libinput-tools xdotool

#Add your user to the input group
sudo gpasswd -a $USER input

#Install libinput gestures
cd ~
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
sudo ./libinput-gestures-setup install

#Start the software and allow it to run at startup.
libinput-gestures-setup start
libinput-gestures-setup autostart

#Install UI tool
sudo apt-get install python3
sudo apt-get install python3-setuptools
cd ~
git clone https://gitlab.com/cunidev/gestures
cd gestures
sudo python3 setup.py install

#-------------------------------------------

#Install ibus-bamboo
sudo apt-get install -y ibus-unikey

#Resstart ibus
ibus restart

#-------------------------------------------

#Install mdless
sudo gem install mdless

#-------------------------------------------

#Install Gnome Tweak Tool
sudo apt-get install -y gnome-tweak-tool

#-------------------------------------------

#Install Shell Extensions
sudo apt-get install -y gnome-shell-extensions

#-------------------------------------------

#Install Plank Dock
sudo apt-get install -y plank

#-------------------------------------------

#Install TeamViewer
cd ~
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install -y ./teamviewer_amd64.deb

#-------------------------------------------

#Install Curl
sudo apt-get install -y curl

#-------------------------------------------

#Install Vim
sudo apt-get install -y vim

#Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#-------------------------------------------

#Load Configuration Files
./loadConfig.sh

#-------------------------------------------

#Source .vimrc
vim -c -y "source $MYVIMRC" -c qa

#Install Pluggins
vim -c "PlugInstall" -c qa

#Install YouCompleteMe
sudo apt-get install -y build-essential cmake vim-nox python3-dev
sudo apt-get install -y mono-complete golang nodejs default-jdk npm
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --clangd-completer
python3 install.py --all

#Install Exuberant Ctags
sudo apt-get install -y exuberant-ctags

#Install Ack-Grep
sudo apt-get install -y ack-grep
