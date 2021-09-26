#!/bin/bash

if [[ $EUID -eq 0 ]]; then
  echo "This script should NOT be run as root" 1>&2
  exit 1
fi

# Save working directory
WORKDIR="$(pwd)"

while true; do
    read -p "Do you wish to install Latex Suite?[Yes][No]" yn
    case $yn in
        [Yy]* ) latex=TRUE; break;;
        [Nn]* ) latex=FALSE; break;;
        * ) echo "Please choose yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install Paint for screenshot editing?[Yes][No]" yn
    case $yn in
        [Yy]* ) paint=TRUE; break;;
        [Nn]* ) paint=FALSE; break;;
        * ) echo "Please choose yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install Sreen Recorder?[Yes][No]" yn
    case $yn in
        [Yy]* ) recorder=TRUE; break;;
        [Nn]* ) recorder=FALSE; break;;
        * ) echo "Please choose yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install Hardisk Sentinel?[Yes][No]" yn
    case $yn in
        [Yy]* ) hdsentinel=TRUE; break;;
        [Nn]* ) hdsentinel=FALSE; break;;
        * ) echo "Please choose yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install macOS Themes?[Yes][No]" yn
    case $yn in
        [Yy]* ) macOSTheme=TRUE; break;;
        [Nn]* ) macOSTheme=FALSE; break;;
        * ) echo "Please choose yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install macOS exclusive applications?[Yes][No]" yn
    case $yn in
        [Yy]* ) macOSApp=TRUE; break;;
        [Nn]* ) macOSApp=FALSE; break;;
        * ) echo "Please choose yes or no.";;
    esac
done

while true; do
    echo "This process might take long and should not be interupted."
    read -p "Are you sure to proceed?[Yes][No]" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 1;;
        * ) echo "Please choose yes or no.";;
    esac
done

#-------------------------------------------

# Install config
bash $WORKDIR/config/install.sh -y
bash $WORKDIR/Frequently-Used-Apps/install-frequently-used-apps.sh

#-------------------------------------------

# Install Frequently Used Apps

if [ $latex = "TRUE" ]
then
    bash $WORKDIR/Frequently-Used-Apps/install/latex-install.sh
fi

if [ $paint = "TRUE" ]
then
    bash $WORKDIR/Frequently-Used-Apps/install/paint-install.sh
fi

if [ $recorder = "TRUE" ]
then
    bash $WORKDIR/Frequently-Used-Apps/install/screen-recorder-install.sh
fi

if [ $hdsentinel = "TRUE" ]
then
    bash $WORKDIR/Frequently-Used-Apps/install/hdsentinel-install.sh
fi

if [ $macOSTheme = "TRUE" ]
then
    bash $WORKDIR/MacOS-Themes/install.sh
fi

if [ $macOSApp = "TRUE" ]
then
    #cd $WORKDIR/MacOS-Themes/MacOS-Exclusive-Apps
    #./install.sh
    #bash $WORKDIR/MacOS-Themes/MacOS-Exclusive-Apps/install.sh
    echo "Working..."
fi

# Install Renamed Apps

#-------------------------------------------

# Install Run Diablog Apps
