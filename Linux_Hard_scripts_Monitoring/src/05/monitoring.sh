#!/bin/bash

# Check if parameter is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <1|2|3|4>"
  exit 1
fi

# Define log file path
for i in {1..5}; do
log_file="./log$i.log"

# Choose awk script depending on parameter
case "$1" in
  1)
    awk '{print $9 " " $0}' "$log_file" | sort ;;
  2)
    awk '{print $1}' "$log_file" | sort -u ;;
  3)
    awk '$9 >= 400 && $9 < 600 {print $9 "  -  " $0}' "$log_file" ;;
  4)
    awk '$9 >= 400 && $9 < 600 {print $1}' "$log_file" | sort -u ;;
  *)
    echo "Invalid parameter value. Usage: $0 <1|2|3|4>"
    exit 1
    ;;
esac
done
