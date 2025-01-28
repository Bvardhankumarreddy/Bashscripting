#!/bin/bash

#Q -> Write a script to find the factorial of a number.

#parameter to be passed while running the script
num=$1

#check whether the given number greater than zero or not
if [[ $num -lt 0 ]]; then
    echo "The value provided: '$num' is less than zero"
    exit 1
fi

# Check if the input is a positive integer
if ! [[ $num =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a non-negative integer."
    exit 1
fi

x=1
#Write the loop to calculate the factorial of the number
for (( a=1; a<=$num; a++))
do
    x=$(($x*$a))
done

#print the factor of num
echo "The factorial of '$num' is '$x' " 