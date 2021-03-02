#!/bin/bash

while true; do
    read -p "Do you wish to install latex suite?[Yes][No]" yn
    case $yn in
        [Yy]* ) latex=TRUE; break;;
        [Nn]* ) latex=FALSE; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install Paint?[Yes][No]" yn
    case $yn in
        [Yy]* ) paint=TRUE; break;;
        [Nn]* ) paint=FALSE; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install Sreen Recorder?[Yes][No]" yn
    case $yn in
        [Yy]* ) recorder=TRUE; break;;
        [Nn]* ) recorder=FALSE; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to rename Firefox to Safari?[Yes][No]" yn
    case $yn in
        [Yy]* ) safari=TRUE; break;;
        [Nn]* ) safari=FALSE; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

##Install config
#cd config
#./install.sh
#cd ..

#Install Frequently Used Apps

if [ $latex = "TRUE" ]
then
    echo latex
fi

if [ $paint = "TRUE" ]
then
    echo paint
fi

if [ $recorder = "TRUE" ]
then
    echo recorder
fi

if [ $safari = "TRUE" ]
then
    echo safari
fi

#Install Renamed Apps

#Install Run Diablog Apps
