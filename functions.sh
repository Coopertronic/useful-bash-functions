#!/bin/bash

##  Some useful functions
##  Copy this script to your project folder
##  and add as 'source ./functions.sh' then
##  just call the functions as normal.

##> Checks if the user is root and kills the script if it is not.
check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo "You need to run as ROOT, dummy!!!"
        exit 1
    fi
}

##> Prints a goodbye message to the terminal and exits the script.
say_goodbye() {
    lineBreak="<~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~>"
    clear
    echo $lineBreak
    echo "Goodbye"
    echo $lineBreak
    exit 1
}

##> Prints an Error message to the terminal and exits the script.
something_wrong() {
    lineBreak="<~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~>"
    echo $lineBreak
    echo "Something went wrong!!"
    echo "The script cannot continue."
    echo "Please read the above messages"
    echo "to understand what cause the error."
    echo $lineBreak
    exit 1
}
