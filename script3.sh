#! /bin/bash
# Download a file from the internet and save it to a specified location
# Author: Dhananjai Avva
# Date: 18 november 2025
# Checking if both the arguments are given

?

if [ $# -ne 2 ]; then
echo "Usage: $0 <url> <destination>"
exit 1
fi

# Assigning the arguments to the veariables
url=$1
destination=$2
# Download file using wget command
wget -0 "$destination" "$url"
# Cheak if the download was sucessful
if [ $? -eq o ]; then
echo "File downloaded sucessfully to '$destination'"
else
echo "Error: Failed to download file from 'Surl'"
fi
