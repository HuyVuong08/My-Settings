#!/bin/bash

WORKDIR="$(dirname "$(readlink -f "$0")")"

overwriteCopy () {
    #Save .vimrc
    echo Saving .vimrc...
    cp -v $HOME/.vimrc $WORKDIR

    #Save .gvimrc
    echo Saving .gvimrc...
    cp -v $HOME/.gvimrc $WORKDIR

    #Save .tmux.conf
    echo Saving .tmux.conf...
    cp -v $HOME/.tmux.conf $WORKDIR

    #Save libinput-gestures.conf
    echo Saving libinput-gestures.conf...
    cp -v $HOME/.config/libinput-gestures.conf $WORKDIR

    #Save .bash_aliases
    echo Saving .bash_aliases...
    cp -v $HOME/.bash_aliases $WORKDIR

    #Save .bash_functions
    echo Saving .bash_functions...
    cp -v $HOME/.bash_functions $WORKDIR

    #Save battery-status.sh
    echo Saving battery-status.sh...
    sudo cp -v /opt/scripts/battery-status.sh $WORKDIR

    #Save macOS-BigSur Dock Theme
    echo Saving macOS-BigSur Dock Theme...
    sudo cp -v /usr/share/plank/themes/macOS-BigSur/dock.theme $WORKDIR/../MacOS-Themes/BigSur-Dock

    #Save Dock default quick launch icons
    echo Saving Dock default quick launch icons...
    cp -v $HOME/.config/plank/dock1/launchers/* $WORKDIR/../MacOS-Themes/plank-launchers

    #Save Albert settings
    echo Saving Albert settings...
    cp -v $HOME/.config/albert/albert.conf $WORKDIR/../MacOS-Themes/BigSur-Spotlight/
}

nonOverwriteCopy () {
    #Save .vimrc
    echo Saving .vimrc...
    result=$(cp -vn ~/.vimrc $WORKDIR)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save .gvimrc
    echo Saving .gvimrc...
    result=$(cp -vn $HOME/.gvimrc $WORKDIR)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save .tmux.conf
    echo Saving .tmux.conf...
    result=$(cp -vn $HOME/.tmux.conf $WORKDIR)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save libinput-gestures.conf
    echo Saving libinput-gestures.conf...
    result=$(cp -vn $HOME/.config/libinput-gestures.conf $WORKDIR)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save .bash_aliases
    echo Saving .bash_aliases...
    result=$(cp -vn $HOME/.bash_aliases $WORKDIR)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save .bash_functions
    echo Saving .bash_functions...
    result=$(cp -vn $HOME/.bash_functions $WORKDIR)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save battery-status.sh
    echo Saving battery-status.sh...
    result=$(sudo cp -vn /opt/scripts/battery-status.sh $WORKDIR)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save macOS-BigSur Dock Theme
    echo Saving macOS-BigSur Dock Theme...
    result=$(sudo cp -vn /usr/share/plank/themes/macOS-BigSur/dock.theme $WORKDIR/../MacOS-Themes/BigSur-Dock)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save Dock default quick launch icons
    echo Saving Dock default quick launch icons...
    result=$(cp -vn $HOME/.config/plank/dock1/launchers/* $WORKDIR/../MacOS-Themes/plank-launchers)
    if [ "$result" = "" ]
        then
            echo -e "File already exist. Abort..."
    fi

    #Save Albert settings
    echo Saving Albert settings...
    result=$(cp -vn $HOME/.config/albert/albert.conf $WORKDIR/../MacOS-Themes/BigSur-Spotlight/)
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
