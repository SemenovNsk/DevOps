#!/bin/bash
chmod 777 info_output.sh
chmod 777 print.sh
chmod 777 define_v.sh
# Check if the number of arguments is not 4
if [ $# -ne 0 ]; then
    echo "Error: There no parametres"
    exit 1
fi

source info_output.sh
# Check if any parameter is not in the range of 1-6
if ! [[ "$column1_background" =~ ^[1-6\ ]+$ ]] || ! [[ "$column1_font_color" =~ ^[1-6\ ]+$ ]] || ! [[ "$column2_background" =~ ^[1-6\ ]+$ ]] || ! [[ "$column2_font_color" =~ ^[1-6\ ]+$ ]]; then
    echo "Error: Parameters can only be 1, 2, 3, 4, 5 or 6"
    exit 1
fi
# Check if the font and background colors of one column match


if [ "$column1_background" -eq "$column1_font_color" ] || [ "$column2_background" -eq "$column2_font_color" ]; then
    echo "Error: The font and background colors of one column match."
    read -p "Do you want to try again? (Y/N) " answer
    if [[ "$answer" =~ ^[Yy]$ ]]; then
        read -p "Input correct parameters: " input1 input2 input3 input4 
        echo "column1_background='$input1'
              column1_font_color='$input2'
              column2_background='$input3'
            column2_font_color='$input4'" > config.sh
        # Re-run the script with the correct parameters
        "$0"
    exit 1
    else
        exit 0
    fi
else
    # Run the info_output.sh script with the given parameters
    ./info_output.sh "$@"
    ./print.sh
    exit
fi


