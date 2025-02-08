#!/bin/bash

# -> Write a script to find all .txt files in a directory and count them.

#check if the parameter passed is empty or not
if [[ -z "$1" ]]; then 
    echo "Please provide a directory as an argument."
    exit 1
fi
 
$x=0
#check for the .txt files in the directory
echo "Listing all the values in the .txt files in the directory: '$1' "
for files in "$1"/*.txt; do
    if [[ -f "$files" ]]; then
        #different ways to add plus one to the variable in the loop
        # let x=x+1
        # x=$(expr $x + 1)
        ((x+=1))
    fi
done

echo $x



