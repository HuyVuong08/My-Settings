#Uninstall Screen Recorder
sudo apt-get remove -y vokoscreen-ng
#Remove the official PPA
sudo add-apt-repository --remove ppa:ubuntuhandbook1/apps

#Auto remove
sudo apt-get -y autoremove
