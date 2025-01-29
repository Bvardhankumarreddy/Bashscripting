#!/bin/bash

# -> Write a script to reverse a string.

#check if the parameter is passed or not
if [[ ! $# -eq 1 ]]; then
    echo "Please pass an argument while running the script"
    exit 1
fi

val=$1

#check if the value is entered a string or not
if [[ ! $1 =~ ^[A-Za-z]+$ ]]; then
    echo "The value entered is not a string"
fi

len_val=${#val}
rev_str=""

for((a=$len_val-1; a>=0; a--));
do
    #${variable:offset:length} -> rev_str="$rev_str${str:$i:1}"
    rev_str="$rev_str${val:$a:1}"
done

echo $rev_str



