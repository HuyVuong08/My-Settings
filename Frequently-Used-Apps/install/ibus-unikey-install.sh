#!/bin/bash

# Add Language Package
sudo apt-get install language-pack-vi language-pack-gnome-vi language-pack-vi-base language-pack-gnome-vi-base

# Install Ibus-Unikey
echo Installing Ibus-Unikey for Vietnamese Language Typing ...
sudo apt-get install -y ibus-unikey

# Resstart Ibus
ibus restart
