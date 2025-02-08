#!/bin/bash

# -> Write an example with two functions.


# Function to get disk usage of a directory
get_disk_usage() {
    local dir=$1
    echo "Disk usage for directory: $dir"
    du -sh "$dir"
}

# Function to find files larger than 1GB in a directory
get_large_files() {
    local dir=$1
    echo "Searching for files larger than 1GB in: $dir"
    find "$dir" -type f -size +1G
}

# Main script execution
read -p "Enter the directory path: " directory

# Call the functions
get_disk_usage "$directory"
get_large_files "$directory"
