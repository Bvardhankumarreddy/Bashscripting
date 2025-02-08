#!/bin/bash

# -> Write a script to process all .zip files in a directory and extract them.


read -p "Enter the directory path to unzip all the zip: - " dir_path

#Check the value is empty or not
if [[ -z $dir_path ]]; then
    echo "Please enter an value"
    exit 1
fi

#Verify the value is entered is a directory or not
if [[ ! -d $dir_path ]]; then
    echo "The value '$dir_path' is not a directory"
    exit 1
fi
# Check if there are any .zip files in the directory
shopt -s nullglob  # Prevents "*.zip" from expanding if no files exist
zip_files=("$dir_path"/*.zip)

if [[ ${#zip_files[@]} -eq 0 ]]; then
    echo "No .zip files found in '$dir_path'."
    exit 0
fi

# Unzip all .zip files
for zip in "${zip_files[@]}"; do
    echo "Extracting: $zip"
    unzip -o "$zip" -d "$dir_path"
done

echo "All the files in the '$dir_path' are unzipped"
