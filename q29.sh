#!/bin/bash

# -> Script to automate MySQL database backups.

# Define MySQL credentials
DB_USER="root"
DB_PASSWORD="yourpassword"
DB_NAME="yourdatabase"

# Define backup directory
BACKUP_DIR="/backup/mysql"
mkdir -p "$BACKUP_DIR"  # Create directory if not exists

# Get current date
CURRENT_DATE=$(date +"%Y-%m-%d")

# Backup file name
BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_backup_$CURRENT_DATE.sql"

# Run MySQL dump
mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

# Verify if backup was successful
if [[ -f "$BACKUP_FILE" ]]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
    exit 1
fi

# Compress the backup file
gzip "$BACKUP_FILE"

echo "Backup compressed: ${BACKUP_FILE}.gz"

