#!/bin/sh
function overwriteCopy () {
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

function nonOverwriteCopy () {
    #Save .vimrc
    echo Saving .vimrc
    cp -vn ~/.vimrc .
    if [ "$result" = "" ]
        then
            echo -e "File already exist.\nAbort..."
    fi

    #Save .gvimrc
    echo Saving .gvimrc
    cp -vn ~/.gvimrc .
    if [ "$result" = "" ]
        then
            echo -e "File already exist.\nAbort..."
    fi

    #Save libinput-gestures.conf
    echo Saving libinput-gestures.conf
    cp -vn ~/.config/libinput-gestures.conf .
    if [ "$result" = "" ]
        then
            echo -e "File already exist.\nAbort..."
    fi

    #Save .bash_aliases
    echo Saving .bash_aliases
    cp -vn ~/.bash_aliases .
    if [ "$result" = "" ]
        then
            echo -e "File already exist.\nAbort..."
    fi

    #Save .bash_functions
    echo Saving .bash_functions
    cp -vn ~/.bash_functions .
    if [ "$result" = "" ]
        then
            echo -e "File already exist.\nAbort..."
    fi
}

function cancel() {
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
