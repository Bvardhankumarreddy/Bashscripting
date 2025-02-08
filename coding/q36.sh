#!/bin/bash

# -> Write a script to send an email notification if a service goes down.

#!/bin/bash

# -> Script to send an email notification if a service goes down.

# Define the recipient email
recipient="bhopathivardhan654321@gmail.com"

# Get the list of all active services
services=$(systemctl list-units --type=service --state=running | awk '{print $1}' | tail -n +2)

# Track failed services
failed_services=""

# Check each service status
for service in $services; do
    if ! systemctl is-active --quiet "$service"; then
        failed_services+="$service\n"
    fi
done

# If any service is down, send an email notification
if [[ -n "$failed_services" ]]; then
    subject="🚨 Service Down Alert 🚨"
    message="The following services are down:\n\n$failed_services"

    echo -e "$message" | mail -s "$subject" "$recipient"
    echo "Alert sent to $recipient"
else
    echo "All services are running fine."
fi
