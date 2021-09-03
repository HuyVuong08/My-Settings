#!/bin/bash

curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output 'google-chrome-stable_current_amd64.deb'

sudo apt-get install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
