#!/bin/bash

# -> Write a script to copy files from one directory to another if they are not already present.

read -p "Enter Source directory path you want to copy: " src_dir
read -p "Enter Destination directory path you want to send: " dest_dir

# Check if the source directory exists
if [[ ! -d "$src_dir" ]]; then
    echo "Error: The source directory '$src_dir' does not exist."
    exit 1
fi

# Check if the destination directory exists; if not, create it
if [[ ! -d "$dest_dir" ]]; then
    echo "The destination directory does not exist. Creating it..."
    mkdir -p "$dest_dir"
fi

# Loop through files in the source directory
for file in "$src_dir"/*; do
    filename=$(basename "$file")  # Extract only the filename
    dest_file="$dest_dir/$filename"

    # Copy only if the file does not already exist in the destination
    if [[ ! -f "$dest_file" ]]; then
        cp "$file" "$dest_file"
        echo "Copied: $filename"
    else
        echo "Skipped (already exists): $filename"
    fi
done

echo "All files have been successfully copied."
