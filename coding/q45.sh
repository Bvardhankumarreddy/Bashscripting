#!/bin/bash

# -> Write a script to calculate system uptime and display it in hours, minutes, and seconds.

# Get system uptime in seconds
uptime_seconds=$(cat /proc/uptime | awk '{print int($1)}')

# Calculate hours, minutes, and seconds
hours=$((uptime_seconds / 3600))
minutes=$(((uptime_seconds % 3600) / 60))
seconds=$((uptime_seconds % 60))

# Display the uptime
echo "System Uptime: $hours hours, $minutes minutes, $seconds seconds"
