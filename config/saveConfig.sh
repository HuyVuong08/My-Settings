#!/bin/sh
function overwriteCopy () {
    #Save .vimrc
    echo -e "\n"Saving .vimrc
    cp -v ~/.vimrc .
    echo 

    #Save .gvimrc
    echo Saving .gvimrc
    cp -v ~/.gvimrc .
    echo 

    #Save libinput-gestures.conf
    echo Saving libinput-gestures.conf
    cp -v ~/.config/libinput-gestures.conf .
    echo 

    #Save .bash_aliases
    echo Saving .bash_aliases
    cp -v ~/.bash_aliases .
    echo 

    #Save .bash_functions
    echo Saving .bash_functions
    cp -v ~/.bash_functions .
}

function nonOverwriteCopy () {
    #Save .vimrc
    echo -e "\n"Saving .vimrc
    cp -vn ~/.vimrc .
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo 

    #Save .gvimrc
    echo Saving .gvimrc
    cp -vn ~/.gvimrc .
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo 

    #Save libinput-gestures.conf
    echo Saving libinput-gestures.conf
    cp -vn ~/.config/libinput-gestures.conf .
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo 

    #Save .bash_aliases
    echo Saving .bash_aliases
    cp -vn ~/.bash_aliases .
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo 

    #Save .bash_functions
    echo Saving .bash_functions
    cp -vn ~/.bash_functions .
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
}

function cancel() {
    echo -e "Cancelled..."
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


