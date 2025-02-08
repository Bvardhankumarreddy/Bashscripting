#1/bin/bash

# -> Write a script to replace a string in multiple files using sed.

# Prompt user for input
read -p "Enter the directory path: " dir_path
read -p "Enter the string to replace: " old_string
read -p "Enter the new string: " new_string

# Check if the directory exists
if [[ ! -d "$dir_path" ]]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

# Replace the string in all text files (*.txt) in the directory
find "$dir_path" -type f -name "*.txt" | while read -r file; do
    sed -i "s/$old_string/$new_string/g" "$file"
    echo "Replaced in: $file"
done

echo "String replacement completed in all .txt files."
