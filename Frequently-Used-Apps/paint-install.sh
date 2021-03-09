#Install Paint
echo "Installing Paint ..."
#Add the official PPA
sudo add-apt-repository -y ppa:pinta-maintainers/pinta-stable
#Update the repository
sudo apt-get -y update
#Install Pinta
sudo apt-get install -y pinta
