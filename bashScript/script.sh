#!/bin/bash

# Function to display usage message
usage() {
    echo "Usage: $0 [directory1] [directory2] ..."
    echo "Please provide one or more directory paths to create backups."
    exit 1
}

# Function to create backup for a directory
create_backup() {
    local directory="$1"
    local backup_dir="backups"
    local backup_file="backup_$(basename "$directory")_$(date +%Y%m%d_%H%M%S).tar.gz"

    # Create the backups directory if it does not exist
    mkdir -p "$backup_dir"

    # Check if the directory exists
    if [ ! -d "$directory" ]; then
        echo "Error: Directory '$directory' does not exist."
        exit 1
    fi

    # Create the backup tarball
    tar -czf "$backup_dir/$backup_file" "$directory" >/dev/null 2>&1

    # Check if the backup was successful
    if [ $? -eq 0 ]; then
        echo "Backup of '$directory' created successfully: $backup_file"
    else
        echo "Error: Failed to create backup of '$directory'."
    fi
}

# Check if no arguments are provided
if [ $# -eq 0 ]; then
    usage
fi

# Iterate over the provided directory paths and create backups
for directory in "$@"; do
    create_backup "$directory"
done

exit 0

