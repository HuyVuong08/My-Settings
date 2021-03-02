#Uninstall Screen Recorder
sudo apt-get remove -y vokoscreen-ng
#Remove the official PPA
sudo add-apt-repository --remove ppa:ubuntuhandbook1/apps

#Uninstall Paint
sudo apt-get remove -y pinta
#Remove the official PPA
sudo add-apt-repository --remove ppa:pinta-maintainers/pinta-stable

#Install Stopwatch
sudo apt-get remove -y gnome-clock

#Auto remove
sudo apt-get -y autoremove
