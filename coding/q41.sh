#!/bin/bash

# -> Write a script to validate an email address using regular expressions.

read -p "Enter the email address that you want validate: - " email

#Verify the parameter is empty or not
if [[ -z $email ]]; then
    echo "Please enter an email address"
    exit 1
fi

#Verifying the email address is valid or not
if [[ $email =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
    echo "The email address '$email' you entered is valid"
else
    echo "The email address '$email' is not valid"
fi