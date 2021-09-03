#!/bin/bash

# Install Curl
echo Installing Curl ...
sudo apt-get install -y curl

#-------------------------------------------

# Install Unusedpkg
echo Installing Unusedpkg ...
cd $HOME
curl https://codeload.github.com/epinna/Unusedpkg/zip/master -o 'unusedpkg.zip'
unzip -o unusedpkg.zip && rm unusedpkg.zip
cd Unusedpkg-master
./unusedpkg
cd $WORKDIR
