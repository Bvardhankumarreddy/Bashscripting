#!/bin/bash

# -> Script to monitor CPU and memory usage and log it to a file.

LOG_FILE="system_usage.log"
INTERVAL=5  # Time interval in seconds

echo "Monitoring system usage... Logging to $LOG_FILE"
echo "Timestamp | CPU Usage (%) | Memory Usage (%)" > "$LOG_FILE"

while true; do
    # Get timestamp
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

    # Get CPU usage
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')  # Sum of user + system usage

    # Get Memory usage
    MEM_USAGE=$(free | awk '/Mem:/ {printf "%.2f", $3/$2 * 100}')

    # Log the data
    echo "$TIMESTAMP | $CPU_USAGE | $MEM_USAGE" >> "$LOG_FILE"

    # Wait for the specified interval
    sleep $INTERVAL
done
