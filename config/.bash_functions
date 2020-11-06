# bash shell functions

function open () {
    setsid nautilus $1 &>/dev/null
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

