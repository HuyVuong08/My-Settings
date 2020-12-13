#!/bin/sh
function overwriteCopy () {
    #Save terminal-run-dialog-app
    echo -e "\n"Saving terminal-run-dialog-app
    sudo cp -v /usr/bin/terminal . 
    echo 

    #Save safari-run-dialog-app
    echo Saving safari-run-dialog-app
    sudo cp -v /usr/bin/safari . 
    echo 

    #Save open-run-dialog-app
    echo Saving open-run-dialog-app
    sudo cp -v /usr/bin/open .
    echo 

    #Save note-run-dialog-app
    echo Saving note-run-dialog-app
    sudo cp -v /usr/bin/note . 
    echo 

    #Save mail-run-dialog-app
    echo Saving mail-run-dialog-app
    sudo cp -v /usr/bin/mail .
    echo

    #Save settings-run-dialog-app
    echo Saving settings-run-dialog-app
    sudo cp -v /usr/bin/settings . 
 }

function nonOverwriteCopy () {
    #Save terminal-run-dialog-app
    echo -e "\n"Saving terminal-run-dialog-app
    result=$(sudo cp -vn /usr/bin/terminal .)    
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo 

    #Save safari-run-dialog-app
    echo Saving safari-run-dialog-app
    result=$(sudo cp -vn /usr/bin/safari .)
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo 

    #Save open-run-dialog-app
    echo Saving open-run-dialog-app
    result= $(sudo cp -vn /usr/bin/open .)
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo 

    #Save note-run-dialog-app
    echo Saving note-run-dialog-app
    result= $(sudo cp -vn /usr/bin/note .)
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo 

    #Save mail-run-dialog-app
    echo Saving mail-run-dialog-app
    result= $(sudo cp -vn /usr/bin/mail .)
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
    echo

    #Save settings-run-dialog-app
    echo Saving settings-run-dialog-app
    result= $(sudo cp -vn /usr/bin/settings .)
    if [ "$result" = "" ]
        then 
            echo -e "File already exist.\nAbort..."
    fi
 }

function cancel() {
    echo -e "Cancelled..."
}

while true; do
    read -p "Do you wish to overwrite existing saved apps?[Yes][No][Cancel]" yn
    case $yn in
        [Yy]* ) overwriteCopy; break;;
        [Nn]* ) nonOverwriteCopy; break;;
        [Cc]* ) cancel; exit;;
        * ) echo "Please answer yes, no or cancel.";;
    esac
done
