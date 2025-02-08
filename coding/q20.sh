#!/bin/bash

# -> Write a script to check if a given year is a leap year

read -p "Enter the year to verify if the year is a leap year or not: " year

#Verify the value is entered or not
if [[ -z $year ]]; then
    echo "Please enter a value"
    exit 1
fi

#Verify the value entered is an ineteger
if [[ ! $year =~ ^[0-9]+$ ]]; then
    echo "Please enter the correct value"
    exit 1
fi


#Condition to verify the whether it is a leap or not
if [[ ($year%4 -eq 0 && ! $year%100 -eq 0) || ($year%400 -eq 0) ]]; then
    echo "The year you entered is a leap year"
else
    echo "The year you entered is not leap year"
fi