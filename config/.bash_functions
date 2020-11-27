# bash shell functions

function open () {
    if [ -z  "$1" ]
        then 
            setsid nautilus ~/Downloads &>/dev/null
        else 
            setsid nautilus $1 &>/dev/null
    fi
}

function note () {
    setsid gedit $1 &>/dev/null
}

function settings() {
    setsid gnome-control-center $1 &>/dev/null
}

function safari () {
    setsid firefox $1 &>/dev/null
}

function mail () {
    setsid thunderbird $1 &>/dev/null
}

