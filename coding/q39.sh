#!/bin/bash

# -> Write a script to monitor changes in a directory in real time.

# Prompt the user for the directory to monitor
read -p "Enter the directory path to monitor: " dir_path

# Validate if the directory exists
if [[ ! -d "$dir_path" ]]; then
    echo "Error: The directory '$dir_path' does not exist!"
    exit 1
fi

echo "Monitoring directory: $dir_path"
echo "Press [CTRL+C] to stop monitoring."

# Use inotifywait to monitor the directory in real time
inotifywait -m -r -e create,delete,modify,move "$dir_path" --format '%T %w %f %e' --timefmt '%Y-%m-%d %H:%M:%S' |
while read timestamp directory file event; do
    echo "[$timestamp] Event: $event | File: $directory$file"
done
