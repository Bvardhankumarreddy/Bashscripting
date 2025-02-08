#!/bin/bash

# -> Extract log entries between two timestamps from a log file.

# Prompt the user for log file path
read -p "Enter the log file path: " log_file

# Validate the file existence
if [[ ! -f "$log_file" ]]; then
    echo "Error: Log file does not exist!"
    exit 1
fi

# Prompt for timestamps
read -p "Enter start timestamp (YYYY-MM-DD HH:MM:SS): " start_time
read -p "Enter end timestamp (YYYY-MM-DD HH:MM:SS): " end_time

# Extract log entries within the time range
awk -v start="$start_time" -v end="$end_time" \
    '$0 >= start && $0 <= end' "$log_file" > extracted_logs.txt

echo "Log entries from $start_time to $end_time have been saved in 'extracted_logs.txt'."
