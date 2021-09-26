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
