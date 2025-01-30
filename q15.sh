#!/bin/bash

# -> Write a script to search for a string in a file and display the line number where it occurs.

#Take input of the file path to search for string
echo "Enter the file path to search for:"
read file_path
echo "Enter the string that you want search for:"
read search_string

if [[ ! -f $file_path ]]; then
    echo "Please enter the correct file path"
    exit 1
fi

#Search 
line_number=$(grep -n "$search_string" "$file_path")

echo "The line number of string present in the file '$file_path' : "
echo $line_number



# #ChatGPT Provided

# # -> Write a script to search for a string in a file and display the line number where it occurs.

# # Take input for the file path and search string
# read -p "Enter the file path to search for: " file_path
# read -p "Enter the string you want to search for: " search_string

# # Check if the file exists
# if [[ ! -f $file_path ]]; then
#     echo "Error: File '$file_path' not found!"
#     exit 1
# fi

# # Search for the string in the file (case-insensitive)
# matches=$(grep -in "$search_string" "$file_path")

# # Check if matches were found
# if [[ -z "$matches" ]]; then
#     echo "No matches found for '$search_string' in '$file_path'."
# else
#     echo "Occurrences of '$search_string' in '$file_path':"
#     echo "$matches"
# fi
