#!/bin/bash

# Source and backup directories
SOURCE_DIR=${1:-$HOME}
BACKUP_DIR="$HOME/backups"

# Create backups folder if it doesn’t exist
mkdir -p "$BACKUP_DIR"

# Timestamp for uniqueness
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Perform backup
echo "Backing up $SOURCE_DIR to $BACKUP_DIR/backup_$TIMESTAMP..."
cp -r "$SOURCE_DIR" "$BACKUP_DIR/backup_$TIMESTAMP"

echo "Backup completed at $BACKUP_DIR/backup_$TIMESTAMP"
