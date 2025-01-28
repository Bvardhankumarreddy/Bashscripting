#!/bin/bash

#Q -> Write a script to count the number of lines, words, and characters in a file.

#check if a file name is provided
if [[ $# -eq 0 ]]; then
    echo "Usage : $0 filename"
    exit 1
fi

#Assign the file name to a varoable
File=$1

#check if the file exists
if [[ ! -f $File ]]; then
    echo "Erro: File '$File' does not exists"
fi

#Count Lines, words and characters in the file using wc command
Lines=$(wc -l < "$File")
Word=$(wc -w < "$File")
characters=$(wc -m < "$File")

echo $Lines
echo $Word
echo $characters

