#! /bin/bash
# Backup a specified directory to a backup folder with a timestamp
# Author: Dhananjai Avva
# Date: 18 november 2025

if [ $# -ne 2 ]; then
# check if both argumenrs are given
echo "Usage: $0 <source_directory> <backup_directory>"
exit 1
fi

# Assinging the arguments to the variables
source=$1
backup=$2
# cheak if the source directory exists
if [ ! -d "$source" ]; then
echo "Error: source directory '$source' does not exist."
exit 1

fi
# creating the backup directory if it doesn't exist
if [ ! -d "$backup" ]; then
mkdir -p "$backup"

fi
# Generating the timestamp fo the backup folder name
timestamp="$(date +%Y%m%d%H%M%S)"
# Copy the source directory to the backup directory with timestamp
cp -r "$source" "$backup/backup_$timestamp"
# Confirming the backup completion
echo "Backup of '$source' completed at '$backup/backup_$timestamp'"
dhananjaiavva@dhananjaiavva :~ $
