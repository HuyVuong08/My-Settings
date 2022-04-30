#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Install Wget
echo 'Installing Wget...'
sudo apt-get install -y wget

#-------------------------------------------

# Install Beyond Compare
echo 'Installing Beyond Compare...'
(
cd $WORKDIR
wget https://www.scootersoftware.com/bcompare-4.4.2.26348_amd64.deb
sudo apt update
sudo apt install ./bcompare-4.4.2.26348_amd64.deb
rm bcompare-4.4.2.26348_amd64.deb
)
