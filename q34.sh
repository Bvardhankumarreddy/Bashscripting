#!/bin/bash

# -> Create a script to perform recursive directory traversal and find all .sh files.

#User input for the directory
read -p "Enter the directory you want to find .sh file" dir_path

if [[ -z $dir_path ]]; then
    echo "Please the a directory path"
    exit 1
fi


if [[ ! -d $dir_path ]]; then
    echo "The path that entered is not a directory"
fi

# Find all .sh files in the given directory recursively
echo "Searching for .sh files in '$dir_path'..."
find "$dir_path" -type f -name "*.sh"