#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

#-------------------------------------------

# Update
echo "Updating..."
sudo apt update -y

#-------------------------------------------

# Install Plank Dock
echo "Installing Plank Dock..."
sudo apt-get install -y plank

# Fix Plank Dock Location When Changine Resolution
echo "Fixing Plank Dock Location When Changine Resolution..."
sudo apt-get install -y libx11-dev make gcc
mkdir -p $HOME/.config/systemd/user
cp -v $WORKDIR/BigSur-Dock/plank.service $HOME/.config/systemd/user/
systemctl --user enable plank
# Kill plank if it is running
# pkill -f plank
echo "Starting Plank..."
systemctl --user start plank
git clone https://github.com/ritave/xeventbind.git
(
cd xeventbind
make
sudo cp -v ./xeventbind /usr/bin/
)
rm -rf xeventbind xeventbind
sudo cp -v $WORKDIR/BigSur-Dock/restart-plank.sh /usr/bin/
sudo chmod a+x /usr/bin/restart-plank.sh
cp -v $WORKDIR/BigSur-Dock/plank.desktop $HOME/.config/autostart/

# Launch Plank Dock on Startup
# ln -s /usr/share/applications/plank.desktop $HOME/.config/autostart/plank.desktop

# Install Plank Dock themes
echo 'Installing MacOS Big Sur Plank Dock Themes...'
sudo mkdir -p /usr/share/plank/themes/macOS-BigSur/
sudo cp -v $WORKDIR/BigSur-Dock/dock.theme /usr/share/plank/themes/macOS-BigSur/

# Add default quick launch icon to Plank Dock
echo 'Adding default quick launch icons to Plank Dock...'
cp -v $WORKDIR/BigSur-Dock/plank-launchers/* $HOME/.config/plank/dock1/launchers/
