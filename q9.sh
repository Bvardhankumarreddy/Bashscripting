#!/bin/bash

#Q -> Create a script that adds two numbers given as command-line arguments.


# Check if two arguments are passed
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 $1 $2 $3"
    exit 1
fi

num1=$1
num2=$2
num3=$3

# Check if the input is a positive integer
if ! [[ $num1 =~ ^-?[0-9]+$ && $num2 =~ ^-?[0-9]+$ && $num3 =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter a non-negative integer."
    exit 1
fi



#check for the greatest number among the three number
if [[ $num1 -gt $num2 && $num1 -gt $num3 ]]; then
    echo "'$num1' is greatest number among the three numbers"
elif [[ $num2 -gt $num1 && $num2 -gt $num3 ]]; then
     echo "'$num2' is greatest number among the three numbers"
else
    echo "'$num3' is greatest number among the three numbers"
fi

