#!/bin/bash

# Install WPS Office
echo 'Installing WPS Office...'
curl https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10161/wps-office_11.1.0.10161.XA_amd64.deb -o wps.deb
sudo apt-get install -y ./wps.deb
rm wps.deb
