#!/bin/bash

# Create a 2GB Swapfile
echo Creating a 2GB Swapfile ...
sudo swapoff /swapfile
sudo dd if=/dev/zero of=/swapfile count=2 bs=1G
sudo mkswap /swapfile
sudo chmod 600 /swapfile
sudo swapon /swapfile
