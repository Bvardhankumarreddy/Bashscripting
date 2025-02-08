#!/bin/bash

# -> How do you handle errors in bash scripting? Write an example with trap.

# Log file to store errors
LOG_FILE="error.log"

# Trap function to handle errors
error_handler() {
    echo "⚠️ Error occurred at line $1. Check $LOG_FILE for details."
    echo "Error at line $1" >> "$LOG_FILE"
    exit 1  # Exit the script with an error code
}

# Set trap to catch errors (ERR) and call error_handler
trap 'error_handler $LINENO' ERR

# Enable script to exit on any error
set -e  

echo "Starting script..."

# Simulating an error (trying to list a non-existent directory)
ls /non_existent_directory

echo "This line will not execute if an error occurs above."
