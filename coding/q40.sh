#!/bin/bash

# -> Write a script to implement a simple calculator with options for addition, subtraction, multiplication, and division

while true; do 
    echo "============Simple Calculator============"
    echo "1. Addition"
    echo "2. Substraction"
    echo "3. Multiplication"
    echo "4. Division"
    read -p "Enter your choice (1-4): " choice

    case $choice in

        1) 
            read -p "Enter two values to add:- " num1 num2
            result=$((num1 + num2))
            echo "Sum of Two variables '$num1' and '$num2' : - '$result'"
            ;;
        
        2)
            read -p "Enter two values to substract:- " num1 num2
            result=$((num1 - num2))
            echo "Substraction of Two variables '$num1' and '$num2' : - '$result'"
            ;;
        3)
            read -p "Enter two values to multiple:- " num1 num2
            result=$((num1 * num2))
            echo "Multiplication of Two variables '$num1' and '$num2' : - '$result'"
            ;;
        4)
           read -p "Enter two values to divide:- " num1 num2
            if [[ $num2 -eq 0 ]]; then
                echo "Error: Division by zero is not allowed!"
            else
                result=$(awk "BEGIN {printf \"%.2f\", $num1 / $num2}")
                echo "Division: $num1 / $num2 = $result"
            fi
           echo "Division of Two variables '$num1' and '$num2' : - '$result'" 
           ;;
        *)
            echo "Invalid choice! Please enter a number between 1 and 4."
            ;;
    esac
    echo "=========================================="

done