#!/bin/bash

OverwriteCopy () {
    #Load .vimrc
    echo Loading .vimrc
    cp -v .vimrc ~

    #Load .gvimrc
    echo Loading .gvimrc
    cp -v .gvimrc ~

    #Load libinput-gestures.conf
    echo Loading libinput-gestures.conf
    cp -v libinput-gestures.conf ~/.config/ && libinput-gestures-setup restart

    if ! grep -Fxq "    . ~/.bash_functions" ~/.bashrc
    then
        echo -e "\nif [ -f ~/.bash_functions ]; then\n    . ~/.bash_functions\nfi" >> $HOME/.bashrc
    fi

    #Load .bash_aliases
    echo Loading .bash_aliases
    cp -v .bash_aliases ~ && source ~/.bashrc

    #Load .bash_functions
    echo Loading .bash_functions
    cp -v .bash_functions ~ && source ~/.bashrc

    #Load battery-status.sh
    sudo mkdir -p /opt/scripts/
    sudo cp -v battery-status.sh /opt/scripts
    sudo chmod +x /opt/scripts/battery-status.sh
    if ! grep -Fxq "sh /opt/scripts/battery-status.sh &" /etc/profile
    then
         echo -e "\nsh /opt/scripts/battery-status.sh &" | sudo tee --append /etc/profile >> /dev/null
    fi
}

nonOverwriteCopy () {
    #Load .vimrc
    echo Loading .vimrc
    result=$(cp -vn .vimrc ~)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Load .gvimrc
    echo Loading .gvimrc
    result=$(cp -vn .gvimrc ~)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Load libinput-gestures.conf
    echo Loading libinput-gestures.conf
    result=$(cp -vn libinput-gestures.conf ~/.config/)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Load .bash_aliases
    echo Loading .bash_aliases
    result=$(cp -vn .bash_aliases ~ && source ~/.bashrc)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Load .bash_functions
    echo Loading .bash_functions
    result=$(cp -vn .bash_functions ~ && source ~/.bashrc)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

}

cancel() {
    echo "Cancelled..."
}

usage() {
  printf "%s\n" "Usage: $0 [OPTIONS...]"
  printf "\n%s\n" "OPTIONS:"
  printf "  %-15s%s\n" "-y, --yes" "Overwrite existing files in destination"
  printf "  %-15s%s\n" "-n, --no" "Do not overwrite existing files in destination"
  printf "  %-15s%s\n" "-h, --help" "Show this help"
}

if [[ $# -eq 0 ]]; then
    while true; do
        read -p "Do you wish to overwrite existing configurations?[Yes][No][Cancel]" yn
        case $yn in
            [Yy]* ) OverwriteCopy; break;;
            [Nn]* ) nonOverwriteCopy; break;;
            [Cc]* ) cancel; exit;;
            * ) echo "Please answer yes, no or cancel.";;
        esac
    done
fi

while [[ $# -gt 0 ]]; do
    case "${1}" in
        -y|--yes)
            OverwriteCopy
            shift 1
            ;;
        -n|--no)
            nonOverwriteCopy
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
