#!/bin/bash

#Q -> Create a script that adds two numbers given as command-line arguments.


# Check if two arguments are passed
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 $1 $2"
    exit 1
fi

#Take input as the parameters passed wile running the script
num1=$1
num2=$2

#check if the numbers are greater than zero or not
if [[ $num1 -lt 0 && $num2 -lt 0 ]]; then
    echo "The values passed in the parameters '$num1' and '$num2' are less than zero"
elif [[ $num1 -lt 0 || $num2 -gt 0 ]]; then
    echo "'$num1' is less than zero"
else
    echo "'$num2' is less than zero"
fi

#Adding the two numbers
x=$(($num1+$num2))

#Print the values
echo "The addition of two numbers if '$x'"
