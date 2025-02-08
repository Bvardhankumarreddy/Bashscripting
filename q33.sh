#!/bin/bash

# -> Write a script to parse a CSV file and extract specific columns.

# Prompt user for CSV file path
read -p "Enter the CSV file path: " csv_file

# Check if file exists
if [[ ! -f "$csv_file" ]]; then
    echo "Error: File '$csv_file' not found!"
    exit 1
fi

# Prompt user for column numbers (comma-separated, e.g., 1,3,5)
read -p "Enter the column numbers to extract (comma-separated, e.g., 1,3,5): " columns

# Prompt for optional delimiter (default is ",")
read -p "Enter the delimiter (default is ','): " delimiter
delimiter=${delimiter:-","}  # Use "," if no delimiter is provided

# Extract specific columns using `awk`
awk -F"$delimiter" -v cols="$columns" '
BEGIN {
    split(cols, col_arr, ",")  # Split user input into an array
}
{
    output = ""
    for (i in col_arr) {
        col = col_arr[i]  # Get column number
        if (col <= NF) {
            outp/ut = output $col_arr[i] " "
        }
    }
    print output
}' "$csv_file"
