#!/bin/bash

# -> Write a script to find and delete all files larger than 1GB in a directory

read -p "Enter the directory to check for the files greater than 1 GB: " path_dir

#Check if the value is empty or not
if [[ -z $path_dir ]]; then
    echo "Please enter a value"
    exit 1
fi

#Check if the path enetered is directory or not
if [[ ! -d $path_dir ]]; then
    echo "The path you entered is inavlid or it is not a directory"
    exit 1
fi

files=$(find "$path_dir" -type f -size +1G -exec rm -rf {} \; )


# Check if files were found
if [[ -z "$files" ]]; then
    echo "No files larger than 1GB found in '$path_dir'."
else
    echo "Files larger than 1GB in '$path_dir':"
    echo "$files"
fi
