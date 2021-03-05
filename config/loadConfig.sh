#!/bin/bash
overwriteCopy () {
    #Load .vimrc
    echo Loading .vimrc
    cp -v .vimrc ~

    #Load .gvimrc
    echo Loading .gvimrc
    cp -v .gvimrc ~

    #Load libinput-gestures.conf
    echo Loading libinput-gestures.conf
    cp -v libinput-gestures.conf ~/.config/ && libinput-gestures-setup restart

    #Load .bash_aliases
    echo Loading .bash_aliases
    cp -v .bash_aliases ~ && source ~/.bash_aliases

    #Load .bash_functions
    echo Loading .bash_functions
    cp -v .bash_functions ~ && source ~/.bash_functions

    #Loading plank.desktop to ~/.config/autostart
    echo Loading plank.desktop to ~/.config/autostart
    cp -v plank.desktop ~/.config/autostart
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
    result=$(cp -vn .bash_aliases ~ && source ~/.bash_aliases)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Load .bash_functions
    echo Loading .bash_functions
    result=$(cp -vn .bash_functions ~ && source ~/.bash_functions)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Loading plank.desktop to ~/.config/autostart
    echo Loading plank.desktop to ~/.config/autostart
    result=$(cp -vn plank.desktop ~/.config/autostart)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi
}

cancel() {
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
