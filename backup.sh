#!/bin/bash
# Script to back up a directory with a timestamp

# Default source is home directory if no argument provided
SOURCE_DIR=${1:-$HOME}
BACKUP_DIR="$HOME/backups"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Create backups folder if it doesn’t exist
mkdir -p "$BACKUP_DIR" || {
    echo "Error: Could not create backup directory '$BACKUP_DIR'."
    exit 1
}

# Timestamp for backup folder
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

echo "Backing up $SOURCE_DIR to $BACKUP_DIR/backup_$TIMESTAMP..."
cp -r "$SOURCE_DIR" "$BACKUP_DIR/backup_$TIMESTAMP" || {
    echo "Error: Backup failed."
    exit 1
}
echo "Backup completed at $BACKUP_DIR/backup_$TIMESTAMP"

