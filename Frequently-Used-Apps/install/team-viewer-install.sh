#!/bin/bash

# Install TeamViewer
echo Installing TeamViewer...
cd $HOME
rm teamviewer_amd64.deb
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install -y ./teamviewer_amd64.deb
cd $WORKDIR
