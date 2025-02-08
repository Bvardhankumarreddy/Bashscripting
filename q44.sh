#!/bin/bash

# -> Write Script to display the top 10 processes consuming the most memory.

echo "Fetching top 10 processes consuming the most memory..."
echo "--------------------------------------------------------"
echo -e "PID\t%MEM\tUSER\tCOMMAND"
echo "--------------------------------------------------------"

# Using `ps` command to get top 10 memory-consuming processes
ps -eo pid,%mem,user,comm --sort=-%mem | head -11
