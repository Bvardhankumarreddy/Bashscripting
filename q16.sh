#!/bin/bash

# -> Write a script to print numbers 1 to 10 using a loop.

for (( a=1; a<=10; a++)); do
    echo $a
done

for i in {1..10}; do
    echo $i
done