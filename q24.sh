#!/bin/bash

# -> Write a script to rename all .jpg files in a directory to .png.

# Ask user for the directory
read -p "Enter the directory containing .jpg files: " dir

# Check if directory exists
if [[ ! -d "$dir" ]]; then
    echo "Directory does not exist!"
    exit 1
fi

# Loop through all .jpg files and rename them to .png
for file in "$dir"/*.jpg; do
    if [[ -f "$file" ]]; then
        mv "$file" "${file%.jpg}.png"
        echo "Renamed: $file -> ${file%.jpg}.png"
    fi
done

echo "Renaming completed!"