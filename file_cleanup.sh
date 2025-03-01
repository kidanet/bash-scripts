#!/bin/bash

# Directory to clean (default: current directory)
DIR=${1:-.}

# Delete files older than 30 days
echo "Cleaning up files older than 30 days in $DIR..."
find "$DIR" -type f -mtime +30 -exec rm -v {} \;

echo "Cleanup complete!"
