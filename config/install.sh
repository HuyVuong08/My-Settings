#!/bin/bash

# Setup Procedure
setup() {
    # Save Working Directory
    WORKDIR="$(pwd)"

    # Update
    echo "Updating ..."
    sudo apt-get -y update

    #-------------------------------------------

    # Install git
    echo "Installing git ..."
    sudo apt-get install -y git

    # Set your global user name and email
    git config --global user.name "HuyVuong08"
    git config --global user.email "huy.vuongle123@gmail.com"

    #-------------------------------------------

    # Install xdotool and libinput-tools
    echo "Installing xdotool and libinput-tools for macOS like touch pad guesture ..."
    sudo apt-get install -y libinput-tools xdotool

    # Add your user to the input group
    sudo gpasswd -a $USER input

    # Install libinput gestures
    cd $HOME
    git clone https://github.com/bulletmark/libinput-gestures.git
    cd libinput-gestures
    sudo make install
    sudo ./libinput-gestures-setup install

    # Start the software and allow it to run at startup.
    libinput-gestures-setup start
    libinput-gestures-setup autostart

    # Install UI tool
    sudo apt-get install python3
    sudo apt-get install python3-setuptools
    cd $HOME
    git clone https://gitlab.com/cunidev/gestures
    cd gestures
    sudo python3 setup.py install
    cd $WORKDIR

    #-------------------------------------------

    # Install ibus-unikey
    echo "Installing ibus-unikey ... for Vietnamese language typing"
    sudo apt-get install -y ibus-unikey

    # Resstart ibus
    ibus restart

    #-------------------------------------------

    # Install mdless
    echo "Installing mdless for mark down files viewing..."
    sudo gem install mdless

    #-------------------------------------------

    # Install TeamViewer
    echo "Installing TeamViewer ..."
    cd $HOME
    rm teamviewer_amd64.deb
    wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
    sudo apt-get install -y ./teamviewer_amd64.deb
    cd $WORKDIR

    #-------------------------------------------

    # Install Unusedpkg
    echo "Installing Unusedpkg ..."
    cd $HOME
    curl https://codeload.github.com/epinna/Unusedpkg/zip/master -o 'unusedpkg.zip'
    unzip -o unusedpkg.zip && rm unusedpkg.zip
    cd Unusedpkg-master
    ./unusedpkg
    cd $WORKDIR

    #-------------------------------------------

    # Install Curl
    echo "Installing Curl ..."
    sudo apt-get install -y curl

    #-------------------------------------------

    # Install Vim and Necessary Packages
    echo "Installing Vim and Necessary Packages ..."

    # Install Vim
    sudo apt-get install -y vim

    # Install Vim GTK3 for copying to clipboard from vim
    sudo apt-get install -y vim-gtk3

    # Install Vim Plug
    curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    #-------------------------------------------

    # Load Configuration Files
    echo "Loading Configuration Files ..."
    ./loadConfig.sh -y

    #-------------------------------------------

    # Install Vim Setups and Pluggins
    echo "Installing Vim Setups and Pluggins ..."

    # Remove Existing YouCompleteMe Before Re-install It
    sudo rm -rf $HOME/.vim/plugged/YouCompleteMe

    # Source .vimrc
    vim -c -y "source $MYVIMRC" -c qa

    # Install Pluggins
    vim -c "PlugInstall" -c qa

    # Install YouCompleteMe
    echo "Installing YouCompleteMe ..."
    sudo apt-get install -y build-essential cmake vim-nox python3-dev
    sudo apt-get install -y mono-complete golang nodejs default-jdk npm
    cd $HOME/.vim/plugged/YouCompleteMe
    python3 install.py --clangd-completer
    python3 install.py --all
    cd $WORKDIR

    # Install Exuberant Ctags
    echo "Installing Exuberant-ctags ..."
    sudo apt-get install -y exuberant-ctags

    # Install Ack-Grep
    echo "Installing Ack-grep ..."
    sudo apt-get install -y ack-grep
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
            [Yy]* ) break;;
            [Nn]* ) exit 1;;
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
