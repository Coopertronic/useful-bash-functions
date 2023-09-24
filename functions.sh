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

