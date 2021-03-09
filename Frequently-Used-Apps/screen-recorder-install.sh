#Install Screen Recorder
echo "Installing Screen Recorder ..."
#Add the official PPA
sudo add-apt-repository -y ppa:ubuntuhandbook1/apps
#Update the repository
sudo apt-get -y update
#Install vokoScreen-ng
sudo apt-get install -y vokoscreen-ng

#Auto remove
sudo apt-get -y autoremove
