#!/bin/bash

# -> Write a script to automate the installation of software packages based on a list.

#Check the Number of packages installed.
if [[ $# -eq 0 ]]; then
    echo "Please enter the list of packages to install"
fi

#Installing the packages that you wanted.
for ((a=1; a<=$#; a++)) do 
    echo "Installing package '$a' :"
    sudo apt-get install -y "${!a}"
done

#Alternative of using the for loop
# Installing the packages provided as arguments
#for package in "$@"; do
 #   echo "Installing package: $package"
  #  sudo apt-get install -y "$package"
#done


echo "All the requested packages are installed"


