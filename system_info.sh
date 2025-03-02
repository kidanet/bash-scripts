#!/bin/bash
# Script to display basic system information

echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo ""

# Check CPU usage
echo "=== CPU Usage ==="
if command -v top >/dev/null; then
    top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 "%"}'
else
    echo "Error: 'top' not found."
fi
echo ""

# Check memory usage
echo "=== Memory Usage ==="
if command -v free >/dev/null; then
    free -h | grep "Mem:" | awk '{print "Total: " $2 ", Used: " $3 ", Free: " $4}'
else
    echo "Error: 'free' not found."
fi
echo ""

# Check disk usage for root filesystem
echo "=== Disk Usage ==="
if command -v df >/dev/null; then
    df -h | grep "/$" | awk '{print "Disk: " $2 " total, " $3 " used, " $4 " free"}' || echo "No root filesystem data."
else
    echo "Error: 'df' not found."
fi

