#!/bin/bash

# -> Script to check the health of a website using curl.

# Prompt user for website URL
read -p "Enter the website URL to check: " website

# Define log file
LOG_FILE="website_health.log"

# Function to check website health
check_website() {
    HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$website")

    if [[ "$HTTP_STATUS" -eq 200 ]]; then
        echo "$(date +"%Y-%m-%d %H:%M:%S") - $website is UP (Status: $HTTP_STATUS)" | tee -a "$LOG_FILE"
    else
        echo "$(date +"%Y-%m-%d %H:%M:%S") - $website is DOWN (Status: $HTTP_STATUS)" | tee -a "$LOG_FILE"
    fi
}

# Run the check
check_website
