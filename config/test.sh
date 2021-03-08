#!/bin/bash

# Define signal handler and its variable
allowAbort=true;
myInterruptHandler()
{
    if $allowAbort; then
        exit 1;
    fi;
}

# Register signal handler
trap myInterruptHandler SIGINT;

# Wrapper
wrapInterruptable()
{
    # disable the abortability of the script
    allowAbort=false;
    # run the passed arguments 1:1
    "$@";
    # save the returned value
    local ret=$?;
    # make the script abortable again
    allowAbort=true;
    # and return
    return "$ret";
}

# Setup
setup() {
    # Update
    sudo apt-get -y update

    #-------------------------------------------

    # Install git
    sudo apt-get install -y git

    #-------------------------------------------

    # Install mdless
    sudo gem install mdless

    #-------------------------------------------

    # Install Gnome Tweak Tool
    sudo apt-get install -y gnome-tweak-tool

    #-------------------------------------------

    # Install Shell Extensions
    sudo apt-get install -y gnome-shell-extensions
}

# Call your program
wrapInterruptable setup
