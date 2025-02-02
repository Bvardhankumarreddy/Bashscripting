#!/bin/bash

# -> Script to display the disk usage of a home directory.

read -p "Enter the home directory path to check disk usage: " home_dir

# Check if the directory exists
if [[ ! -d "$home_dir" ]]; then
    echo "Error: '$home_dir' is not a valid directory."
    exit 1
fi

# Get disk usage
disk_usage=$(du -sh "$home_dir")

# Display the result
echo "Disk usage of '$home_dir':"
echo "$disk_usage"
