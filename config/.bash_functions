# bash shell functions

function svim () {
    if [ -z  "$1" ]
        then
            sudo -E vim .
        else
            sudo -E vim $1
    fi
}

function open () {
    if [ -z  "$1" ]
        then
            setsid nautilus ~/Downloads &>/dev/null
        else
            setsid nautilus $1 &>/dev/null
    fi
}

function notes () {
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

function cat () {
    pygmentize -g $1
}
