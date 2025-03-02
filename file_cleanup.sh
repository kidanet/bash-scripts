#!/bin/bash
# Script to remove files older than 30 days in a specified directory

# Default to current directory if no argument provided
DIR=${1:-.}

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory '$DIR' does not exist."
    exit 1
fi

echo "Cleaning up files older than 30 days in $DIR..."
find "$DIR" -type f -mtime +30 -exec rm -v {} \; || echo "No files found or error occurred."
echo "Cleanup complete!"

