#!/bin/bash

# -> Write a script to print all the files in a directory

#!/bin/bash

# Check if a directory is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a directory as an argument."
    exit 1
fi

# Check if the provided argument is a valid directory
if [ ! -d "$1" ]; then
    echo "$1 is not a valid directory."
    exit 1
fi

# Loop through all the files in the directory
echo "Listing all files in the directory '$1':"
for file in "$1"/*; do
    if [ -f "$file" ]; then
        echo "$file"
    fi
done

