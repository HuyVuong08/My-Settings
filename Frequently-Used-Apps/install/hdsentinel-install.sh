#!/bin/bash

#Install Hardisk Sentinel
echo "Installing Hardisk Sentinel ..."
curl 'https://www.hdsentinel.com/hdslin/hdsentinel_gui64bit.tar.xz' | tar -Jxv
sudo ./HDSentinel_GUI/install.sh
rm -rf HDSentinel_GUI
