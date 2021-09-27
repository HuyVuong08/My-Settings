#!/bin/bash

# Install Flameshot
echo "Installing Flameshot for screenshot..."
sudo apt-get install -y flameshot || sudo snap install flameshot 

#-------------------------------------------

echo "Setting shortcut-key for launching Flameshot to take a screenshot..."

# Release the PrtScr binding
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'

# Set new custom binding
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

# Set name
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'

# Set command
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/usr/bin/flameshot gui'

# Set binding
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Print'
