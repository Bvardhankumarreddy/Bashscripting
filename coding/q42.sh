#!/bin/bash

# -> Create a script to Read and Manipulate JSON Data using jq

# Prompt user for the JSON file path
read -p "Enter the JSON file path: " json_file

# Check if the file exists
if [[ ! -f "$json_file" ]]; then
    echo "Error: The file '$json_file' does not exist!"
    exit 1
fi

# Display the JSON content
echo "================ JSON Content ================"
jq '.' "$json_file"

# Extract a specific key
read -p "Enter the key you want to extract: " key
value=$(jq -r ".$key" "$json_file")
if [[ "$value" == "null" ]]; then
    echo "Key '$key' not found in the JSON file."
else
    echo "The value of '$key' is: $value"
fi

# Update a value in the JSON file
read -p "Enter the key you want to update: " update_key
read -p "Enter the new value: " new_value
jq --arg key "$update_key" --arg value "$new_value" '.[$key] = $value' "$json_file" > temp.json && mv temp.json "$json_file"
echo "Updated JSON File:"
jq '.' "$json_file"

# Add a new key-value pair
read -p "Enter a new key to add: " new_key
read -p "Enter its value: " new_value
jq --arg key "$new_key" --arg value "$new_value" '.[$key] = $value' "$json_file" > temp.json && mv temp.json "$json_file"
echo "New JSON File after adding '$new_key':"
jq '.' "$json_file"
