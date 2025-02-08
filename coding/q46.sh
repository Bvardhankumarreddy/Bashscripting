#!/bin/bash

# -> Write a script to split a large file into smaller chunks.

# Prompt user for input file and chunk size
read -p "Enter the file path to split: " file_path
read -p "Enter the size of each chunk (e.g., 100M, 500K, 2G): " chunk_size
read -p "Enter the output prefix for the split files: " output_prefix

# Check if file exists
if [[ ! -f $file_path ]]; then
    echo "Error: File '$file_path' not found!"
    exit 1
fi

# Split the file into chunks
split -b "$chunk_size" "$file_path" "$output_prefix"

echo "File '$file_path' has been split into chunks of size '$chunk_size' with prefix '$output_prefix'."
