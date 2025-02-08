#!/bin/bash

# -> Create a menu-driven script for basic operations: file creation, deletion, and viewing.


while true; do
    echo "========== File Operations Menu =========="
    echo "1. Create a file"
    echo "2. Delete a file"
    echo "3. View a file"
    echo "4. Exit"
    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            read -p "Enter the filename to create: " filename
            touch "$filename"
            echo "File '$filename' created successfully."
            ;;
        2)
            read -p "Enter the filename to delete: " filename
            if [[ -f "$filename" ]]; then
                rm "$filename"
                echo "File '$filename' deleted successfully."
            else
                echo "Error: File '$filename' does not exist."
            fi
            ;;
        3)
            read -p "Enter the filename to view: " filename
            if [[ -f "$filename" ]]; then
                cat "$filename"
            else
                echo "Error: File '$filename' does not exist."
            fi
            ;;
        4)
            echo "Exiting the script."
            exit 0
            ;;
        *)
            echo "Invalid choice! Please enter a number between 1 and 4."
            ;;
    esac
    echo "=========================================="
done
