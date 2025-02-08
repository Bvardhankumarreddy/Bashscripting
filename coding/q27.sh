#!/bin/bash

# -> Write a script to compress all .log files in a directory using tar.

read -p "Enter the directory path to the zip all the log file" dirt_path

if [[ ! -d $dirt_path ]]; then
    echo "The Directory path '$dirt_path' that you entered doesn't exists"
fi


find '$dirt_path' -type f -name "*.log" | tar --null -cvf log_files.tar --files-from=-

echo "The log files in '$dirt_path' have been successfully compressed into 'log_files.tar'."

