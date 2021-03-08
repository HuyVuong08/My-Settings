#!/bin/bash

# Save working directory
WORKDIR="$(pwd)"

# Define signal handler and its variable
allowAbort=true;
myInterruptHandler() {
    if $allowAbort; then
        exit 1;
    fi;
}

# Register signal handler
trap myInterruptHandler SIGINT;

# Wrapper
wrapInterruptable() {
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

# Setup procedure
setup () {

    while true; do
        read -p "Do you wish to install latex suite?[Yes][No]" yn
        case $yn in
            [Yy]* ) latex=TRUE; break;;
            [Nn]* ) latex=FALSE; break;;
            * ) echo "Please choose yes or no.";;
        esac
    done

    while true; do
        read -p "Do you wish to install Paint?[Yes][No]" yn
        case $yn in
            [Yy]* ) paint=TRUE; break;;
            [Nn]* ) paint=FALSE; break;;
            * ) echo "Please choose yes or no.";;
        esac
    done

    while true; do
        read -p "Do you wish to install Sreen Recorder?[Yes][No]" yn
        case $yn in
            [Yy]* ) recorder=TRUE; break;;
            [Nn]* ) recorder=FALSE; break;;
            * ) echo "Please choose yes or no.";;
        esac
    done

    while true; do
        read -p "Do you wish to rename Firefox to Safari?[Yes][No]" yn
        case $yn in
            [Yy]* ) safari=TRUE; break;;
            [Nn]* ) safari=FALSE; break;;
            * ) echo "Please choose yes or no.";;
        esac
    done

    while true; do
        read -p "This process might takes a long time and should not be interupted. Aure you sure to proceed?[Yes][No]" yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) exit 1;;
            * ) echo "Please choose yes or no.";;
        esac
    done

    #-------------------------------------------

    ## Install config
    #cd $WORKDIR/config
    #./install.sh
    #cd $WORKDIR

    #-------------------------------------------

    # Install Frequently Used Apps

    if [ $latex = "TRUE" ]
    then
        echo latex

    fi

    if [ $paint = "TRUE" ]
    then
        echo paint
    fi

    if [ $recorder = "TRUE" ]
    then
        echo recorder
    fi

    if [ $safari = "TRUE" ]
    then
        echo safari
    fi

    # Install Renamed Apps

    #-------------------------------------------

    # Install Run Diablog Apps
}

# Call Setup Procedure
wrapInterruptable setup
