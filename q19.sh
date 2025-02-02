#!/bin/bash

# -> Write a script to read a file line by line and print each line.

#Take Input from the user of the file path
read -p "Enter the file path to read line by line: " file_path

#chek if the file exists or not
if [[ ! -f $file_path ]]; then
    echo "Please enter the correct path of the file"
    exit 1 
fi

#Read file line by line
while IFR= read -r line; do
    echo $line
done < $file_path