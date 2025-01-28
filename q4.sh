#!/bin/bash

#Create a script to check if a directory exists

if [[ -d /Applications/Personal ]]; then
    echo "The directory already exists"
else
    echo "Directory doesn't exists"
fi