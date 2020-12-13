#Update
sudo apt-get update

#-------------------------------------------

#Install git
sudo apt-get install git

#Set your global user name and email
git config --global user.name "HuyVuong08"
git config --global user.email "huy.vuongle123@gmail.com"

#-------------------------------------------

#Install xdotool and libinput-tools
sudo apt-get install libinput-tools xdotool

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
cd ~
git clone https://gitlab.com/cunidev/gestures
cd gestures
sudo python3 setup.py install

#-------------------------------------------

#Install ibus-unikey
sudo apt-get install ibus-unikey

#Resstart ibus
ibus restart

#-------------------------------------------

#Install Gnome Tweak Tool
sudo apt-get install gnome-tweak-tool

#-------------------------------------------

#Install Plank Dock
sudo apt-get install plank

#-------------------------------------------

#Install TeamViewer
cd ~
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install ./teamviewer_amd64.deb
rm -v teamviewer_amd64.deb
