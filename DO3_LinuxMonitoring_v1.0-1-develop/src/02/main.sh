#!/bin/bash
chmod 777 info_output.sh
chmod 777 define_v.sh
./info_output.sh
# Ask the user if they want to save the information to a file
read -p "Do you want to save the information to a file? (Y/N) " answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    # Define the file name
    file_name=$(date +"%d_%m_%Y_%H_%M_%S").status
    # Write the information to the file
    ./info_output.sh > $file_name
else
    exit
fi