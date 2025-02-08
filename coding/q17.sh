#!/bin/bash

# -> Script to check if a process is running and restart it if it’s not.

Services=("nginx" "php8.1-fpm")

# Function to check and restart service
check_and_restart() {
    local service=$1
    
    # Check if service is active
    if systemctl is-active --quiet "$service"; then 
        echo "'$service' is running"
    else
        echo "'$service' is not running"
        systemctl restart "$service"

        # Verify if restart was successful
        if systemctl is-active --quiet "$service"; then
            echo "'$service' has been restarted successfully"
        else
            echo "'$service' failed to restart"
        fi
    fi
}

# Loop through the services and check each one
for service in "${Services[@]}"; do
    check_and_restart "$service"
done
