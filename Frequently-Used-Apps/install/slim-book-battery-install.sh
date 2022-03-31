#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

# Add ppa repository
sudo add-apt-repository -y ppa:slimbook/slimbook
sudo apt-get updte -y

# Intall slimbookbattery
sudo apt-get install -y slimbookbattery
