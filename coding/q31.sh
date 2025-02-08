#!/bin/bash

# -> Script to schedule a cron job using bash scripting.

# Ask for the command to schedule
read -p "Enter the command to schedule in cron: " command

# Ask for the cron schedule (e.g., "*/5 * * * *" for every 5 minutes)
read -p "Enter the cron schedule expression (e.g., */5 * * * *): " cron_schedule

# Validate if cron is installed
if ! command -v crontab &> /dev/null; then
    echo "Cron is not installed. Please install it first."
    exit 1
fi

# Create a new cron job entry
CRON_JOB="$cron_schedule $command"

# Check if the cron job already exists
crontab -l | grep -F "$command" &> /dev/null

if [[ $? -eq 0 ]]; then
    echo "Cron job already exists."
else
    # Add the cron job to the existing crontab
    (crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -
    echo "Cron job scheduled: $CRON_JOB"
fi

# Verify the scheduled cron jobs
echo "Current cron jobs:"
crontab -l
