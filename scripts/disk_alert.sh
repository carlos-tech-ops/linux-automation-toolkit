#!/bin/bash

# Set usage threshold (in %)
THRESHOLD=80

# Get usage for root filesystem
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

# Timestamp for logs
NOW=$(date +"%Y-%m-%d %H:%M:%S")

# Check and alert
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "$NOW WARNING: Disk usage on / is at ${USAGE}%!" >> /var/log/disk_alert.log
else
    echo "$NOW OK: Disk usage on / is at ${USAGE}%." >> /var/log/disk_alert.log
fi
