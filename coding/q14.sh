#!/bin/bash

# -> Create a script to automate file backups by appending the date to the filename.

echo "Enter the path of the file to take backup:"
read source_file
echo "Enter the directory to store the backup:"
read dest_path

# Check if the source file exists
if [[ ! -f $source_file ]]; then
    echo "Error: Please enter a valid file."
    exit 1
fi

# Check if the destination directory exists, create if not
if [[ ! -d $dest_path ]]; then
    echo "The directory does not exist. Creating it now..."
    mkdir -p "$dest_path"
fi

# Get the current date in YYYY-MM-DD format
CURRENT_DATE=$(date +"%Y-%m-%d")

# Extract the filename from the source file path
file_name=$(basename "$source_file")

# Extract file extension
file_extension="${file_name##*.}"
file_base_name="${file_name%.*}"

# Create the backup filename with date
BACKUP_FILE="$dest_path/${file_base_name}_backup_$CURRENT_DATE.$file_extension"

# Copy the file to the backup directory
cp "$source_file" "$BACKUP_FILE"

# Verify if the backup was successful
if [[ -f "$BACKUP_FILE" ]]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
    exit 1
fi
