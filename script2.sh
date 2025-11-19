#! /bin/bash
# Log the CPU and memory usage to a file at regular intervals
# Author: Dhananjai Avva
# Date: 18 november 2025
# Check if both the arguments are given
if [ $# -ne 2 ]; then
echo "Usage: $0 <interval_in_seconds> <output_file>"
exit 1
fi
# Assigning the arguments to the variables
interval=$1
output=$2
# writing the header to the output file
echo "Timestamp, CPU_Usage(%), Memory_Usage(%)" > "$output"
# running the infinite loop to monitor and log CPU and memory usage
while true; do
# Get the current timestamp
timestamp=$(date +"%Y-%m -%d \ %H : %M : %S" )
# Get the CPU usage percentage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 -$8}')
# Get the memory usage percentage
mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
# writing the data to the output file
echo "$timestamp, $cpu_usage, $mem_usage" >> "$output"
#waiting for the specified interval
sleep "$interval"

done
