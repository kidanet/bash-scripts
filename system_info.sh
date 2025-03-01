#!/bin/bash

# Display system information
echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo ""
echo "=== CPU Usage ==="
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 "%"}'
echo ""
echo "=== Memory Usage ==="
free -h | grep "Mem:" | awk '{print "Total: " $2 ", Used: " $3 ", Free: " $4}'
echo ""
echo "=== Disk Usage ==="
df -h | grep "/$" | awk '{print "Disk: " $2 " total, " $3 " used, " $4 " free"}'
