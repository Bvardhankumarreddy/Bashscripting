#!/bin/bash

# -> Write a script to generate a system report including CPU, memory, disk usage, and active network connections.

# Output file
REPORT_FILE="system_report_$(date +'%Y-%m-%d_%H-%M-%S').txt"

# Collect System Information
echo "========== System Report ==========" > "$REPORT_FILE"
echo "Generated on: $(date)" >> "$REPORT_FILE"
echo "Hostname: $(hostname)" >> "$REPORT_FILE"

# CPU Usage
echo -e "\n========== CPU Usage ==========" >> "$REPORT_FILE"
top -b -n1 | grep "Cpu(s)" >> "$REPORT_FILE"

# Memory Usage
echo -e "\n========== Memory Usage ==========" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"

# Disk Usage
echo -e "\n========== Disk Usage ==========" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"

# Active Network Connections
echo -e "\n========== Active Network Connections ==========" >> "$REPORT_FILE"
netstat -tunapl | head -20 >> "$REPORT_FILE"

# Display Report Path
echo "System report generated: $REPORT_FILE"
