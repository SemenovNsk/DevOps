#!/bin/bash
chmod 777 declare_v.sh
chmod 777 print.sh


if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# check that a parameter was provided
if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/directory/"
    exit 1
fi

./print.sh "$1"
