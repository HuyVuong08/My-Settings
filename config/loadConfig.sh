#!/bin/sh
function overwriteCopy () {
    #Load .vimrc
    echo Loading .vimrc
    cp -v .vimrc ~

    #Load .gvimrc
    echo Loading .gvimrc
    cp -v .gvimrc ~

    #Load libinput-gestures.conf
    echo Loading libinput-gestures.conf
    cp -v libinput-gestures.conf ~/.config/

    #Load .bash_aliases
    echo Loading .bash_aliases
    cp -v .bash_aliases ~

    #Load .bash_functions
    echo Loading .bash_functions
    cp -v .bash_functions ~
}

function nonOverwriteCopy () {
    #Load .vimrc
    echo Loading .vimrc
    cp -vn .vimrc ~

    #Load .gvimrc
    echo Loading .gvimrc
    cp -vn .gvimrc ~

    #Load libinput-gestures.conf
    echo Loading libinput-gestures.conf
    cp -vn libinput-gestures.conf ~/.config/

    #Load .bash_aliases
    echo Loading .bash_aliases
    cp -vn .bash_aliases ~

    #Load .bash_functions
    echo Loading .bash_functions
    cp -vn .bash_functions ~
}

function cancel() {
    echo "Cancelled..."
}

while true; do
    read -p "Do you wish to overwrite existing configurations?[Yes][No][Cancel]" yn
    case $yn in
        [Yy]* ) overwriteCopy; break;;
        [Nn]* ) nonOverwriteCopy; break;;
        [Cc]* ) cancel; exit;;
        * ) echo "Please answer yes, no or cancel.";;
    esac
done