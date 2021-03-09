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
    read -p "Do you wish to rename Firefox to Safari?[Yes][No]" yn
    case $yn in
        [Yy]* ) safari=TRUE; break;;
        [Nn]* ) safari=FALSE; break;;
        * ) echo "Please choose yes or no.";;
    esac
done

while true; do
    read -p "This process might takes a long time and should not be interupted. Aure you sure to proceed?[Yes][No]" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 1;;
        * ) echo "Please choose yes or no.";;
    esac
done

#-------------------------------------------

## Install config
#cd $WORKDIR/config
#./install.sh
#cd $WORKDIR

#-------------------------------------------

# Install Frequently Used Apps

if [ $latex = "TRUE" ]
then
    cd $WORKDIR/Frequently-Used-Apps
    ./latex-install.sh
fi

if [ $paint = "TRUE" ]
then
    cd $WORKDIR/Frequently-Used-Apps
    ./paint-install.sh
fi

if [ $recorder = "TRUE" ]
then
    cd $WORKDIR/Frequently-Used-Apps
    ./screen-recorder-install.sh
fi

if [ $safari = "TRUE" ]
then
    echo safari
fi

# Install Renamed Apps

#-------------------------------------------

# Install Run Diablog Apps
