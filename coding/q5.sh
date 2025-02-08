#!/bin/bash

#Write a script to find out if a number is even or odd

num=8
if [[ num%2 -eq 0 ]]; then
    echo "The number given is even"
else
    echo "The number given is odd"
fi