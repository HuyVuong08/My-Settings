#!/bin/bash

# Install Xdotool and Libinput-Tools
echo Installing Xdotool and Libinput-Tools for MacOS-like Touch Pad Guesture ...
sudo apt-get install -y libinput-tools xdotool

# Add User to the Input Group
sudo gpasswd -a $USER input

# Install Libinput Gestures
cd $HOME
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
sudo ./libinput-gestures-setup install

# Start the Software and Allow It to Run at Startup.
libinput-gestures-setup start
libinput-gestures-setup autostart

# Install UI Tool
sudo apt-get install -y python3
sudo apt-get install -y python3-setuptools
cd $HOME
git clone https://gitlab.com/cunidev/gestures
cd gestures
sudo python3 setup.py install
cd $WORKDIR
