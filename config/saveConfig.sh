#!/bin/bash
overwriteCopy () {
    #Save .vimrc
    echo Saving .vimrc
    cp -v ~/.vimrc .

    #Save .gvimrc
    echo Saving .gvimrc
    cp -v ~/.gvimrc .

    #Save libinput-gestures.conf
    echo Saving libinput-gestures.conf
    cp -v ~/.config/libinput-gestures.conf .

    #Save .bash_aliases
    echo Saving .bash_aliases
    cp -v ~/.bash_aliases .

    #Save .bash_functions
    echo Saving .bash_functions
    cp -v ~/.bash_functions .
}

nonOverwriteCopy () {
    #Save .vimrc
    echo Saving .vimrc
    result=$(cp -vn ~/.vimrc .)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save .gvimrc
    echo Saving .gvimrc
    result=$(cp -vn ~/.gvimrc .)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save libinput-gestures.conf
    echo Saving libinput-gestures.conf
    result=$(cp -vn ~/.config/libinput-gestures.conf .)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save .bash_aliases
    echo Saving .bash_aliases
    result=$(cp -vn ~/.bash_aliases .)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save .bash_functions
    echo Saving .bash_functions
    result=$(cp -vn ~/.bash_functions .)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi
}

cancel() {
    echo "Cancelled..."
}

while true; do
    read -p "Do you wish to overwrite existing saved configurations?[Yes][No][Cancel]" yn
    case $yn in
        [Yy]* ) overwriteCopy; break;;
        [Nn]* ) nonOverwriteCopy; break;;
        [Cc]* ) cancel; exit;;
        * ) echo "Please answer yes, no or cancel.";;
    esac
done
