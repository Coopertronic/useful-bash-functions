#!/bin/bash

##  Here I will test the things needed to find stuff.
##  I need to find the current package being built and
##  determine if there are anyother packages with a
##  simular name. For  example, if I have just
##  compiled calamares then I don't want to delete
##  calamares-settings or anything else that is similar.
##  It should follw the pattern of package name,
##  then a '-' followed by any number, a wildcard
##  and the final suffix.

source ctos-functions

##  Finds the old packages and deletes them.
find_just_this_old_pkg() {
    ##  Fill array
    #shopt -s extglob
    local thFiles=()
    local thLocation=$1
    local thPrefix=$2
    local thExtention=$3
    echo "The Path: " $thLocation
    echo "The Prefix: " $thPrefix
    echo "The Extention: " $thExtention
    ls -t $thLocation$thPrefix-[0-9].*.$thExtention
    newFileLocation=$(ls -t $thLocation$thPrefix-[0-9].*.$thExtention | head -1)
    line_break
    newFile=${newFileLocation##*/}
    echo "Here is the newest file: " $newFile
    for f in $thLocation$thPrefix-[0-9].*.$thExtention; do
        fileName=${f##*/}
        if [ "$fileName" != "$newFile" ]; then
            thFiles+=($fileName)
        fi
    done
    line_break
    echo "Here are all the $thExtention files apart from the newest one."
    echo "Total files for $thExtention: ${#thFiles[@]}"
    count=0
    for i in "${thFiles[@]}"; do
        echo "File $((count + 1)): "$i
        ((count++))
    done
    line_break
    echo "Do you want to delete them?"
    #to_continue
    line_break
    #count=0
    for i in "${thFiles[@]}"; do
        echo "Deleting file $((count + 1)): "$i
        #rm $thLocation$i
        ((count++))
    done
}

myLocalRepo="Compiler/ctos-side-repo"
myArch="x86_64/"
thRepo="$HOME/$myLocalRepo/$myArch"
currentDir="ctos-calamares"

myLocation="$thRepo"
myPrefix="$currentDir"
myExtention="zst"

##  Start Main
clear
line_break '#'
echo "THIS IS JUST A SIMULATION!!"
line_break '#'
if !( find_just_this_old_pkg $myLocation $myPrefix $myExtention ); then
    something_wrong
else
    line_break
    echo "ZST and SIG files deleted from the"
    echo "the repo directory."
    line_break
fi


