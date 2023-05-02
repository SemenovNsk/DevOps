#!/bin/bash

# Check if the number of arguments is not 4
if [ $# -ne 4 ]; then
    echo "Error: Too few arguments"
    exit 1
fi

# Check if any parameter is not in the range of 1-6
if ! [[ "$@" =~ ^[1-6\ ]+$ ]]; then
    echo "Error: Parameters can only be 1, 2, 3, 4, 5 or 6"
    exit 1
fi

# Check if the font and background colors of one column match
if [ "$1" -eq "$2" ] || [ "$3" -eq "$4" ]; then
    echo "Error: The font and background colors of one column match."
    read -p "Do you want to try again? (Y/N) " answer
    if [[ "$answer" =~ ^[Yy]$ ]]; then
        read -p "Input correct parameters: " input1 input2 input3 input4
        # Re-run the script with the correct parameters
        "$0" "$input1" "$input2" "$input3" "$input4"
    else
        exit 0
    fi
else
    # Run the info_output.sh script with the given parameters
    ./info_output.sh "$@"
    exit
fi
