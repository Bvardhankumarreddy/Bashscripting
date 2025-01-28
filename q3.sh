#!/bin/bash

# Script to print the content of a file using cat

# Ensure the file exists before attempting to read it
if [[ -f Theory.txt ]]; then
    cat Theory.txt
else
    echo "Error: File 'Theory.txt' does not exist."
fi
