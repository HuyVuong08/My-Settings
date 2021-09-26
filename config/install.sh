#!/bin/bash

# Setup Procedure
setup() {
    # Save Working Directory
    WORKDIR="$(pwd)"

    # Upgrade
    echo Upgrading ...
    sudo apt-get -y upgrade

    #-------------------------------------------

    # Update
    echo Updating ...
    sudo apt-get -y update

    #-------------------------------------------

    # Create a 2GB Swapfile
    echo Creating a 2GB Swapfile ...
    sudo swapoff /swapfile
    sudo dd if=/dev/zero of=/swapfile count=2 bs=1G
    sudo mkswap /swapfile
    sudo chmod 600 /swapfile
    sudo swapon /swapfile

    #-------------------------------------------

    # Let Ubuntu Use Local Time
    echo Making Ubuntu Use Local Time ...
    timedatectl set-local-rtc 1 --adjust-system-clock
    timedatectl

    #-------------------------------------------

    # Disable Error Sound in Terminal
    echo Disabling Error Sound in Terminal ...
    if ! grep -Fxq "bind 'set bell-style none'" $HOME/.bashrc
    then
        echo -e "bind 'set bell-style none'" >> $HOME/.bashrc
    fi

#    #-------------------------------------------
#
#    # Install Xdotool and Libinput-Tools
#    echo Installing Xdotool and Libinput-Tools for MacOS-like Touch Pad Guesture ...
#    sudo apt-get install -y libinput-tools xdotool
#
#    # Add User to the Input Group
#    sudo gpasswd -a $USER input
#
#    # Install Libinput Gestures
#    cd $HOME
#    git clone https://github.com/bulletmark/libinput-gestures.git
#    cd libinput-gestures
#    sudo make install
#    sudo ./libinput-gestures-setup install
#
#    # Start the Software and Allow It to Run at Startup.
#    libinput-gestures-setup start
#    libinput-gestures-setup autostart
#
#    # Install UI Tool
#    sudo apt-get install -y python3
#    sudo apt-get install -y python3-setuptools
#    cd $HOME
#    git clone https://gitlab.com/cunidev/gestures
#    cd gestures
#    sudo python3 setup.py install
#    cd $WORKDIR
#
#    #-------------------------------------------
#
#    # Install Ibus-Unikey
#    echo Installing Ibus-Unikey for Vietnamese Language Typing ...
#    sudo apt-get install -y ibus-unikey
#
#    # Resstart Ibus
#    ibus restart
#
#    #-------------------------------------------
#
#    # Install Mdless
#    echo Installing Mdless for Mark Down Files Viewing ...
#    sudo gem install -y mdless
}

quit() {
    echo "Quit ..."
}

usage() {
    printf "%s\n" "Usage: $0 [OPTIONS...]"
    printf "\n%s\n" "OPTIONS:"
    printf "  %-15s%s\n" "-y, --yes" "Assume \"yes\" as answer to all prompts"
    printf "  %-15s%s\n" "-h, --help" "Show this help"
}

if [[ $EUID -eq 0 ]]; then
    echo "This script should NOT be run as root" 1>&2
    exit 1
fi

if [[ $# -eq 0 ]]; then
    while true; do
        echo "This process might take long and should not be interupted."
        read -p "Are you sure to proceed?[Yes][No]" yn
        case $yn in
            [Yy]* ) setup; break;;
            [Nn]* ) quit; exit 1;;
            * ) echo "Please choose yes or no.";;
        esac
    done
fi

while [[ $# -gt 0 ]]; do
    case "${1}" in
        -y|--yes)
            setup
            shift 1
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "ERROR: Unrecognized installation option '$1'."
            echo "Try '$0 --help' for more information."
            exit 1
            ;;
    esac
done
