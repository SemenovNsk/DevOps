#!/usr/bin/env bash

source define_v.sh
source info_output.sh

# Print the information to the console with colors
echo -e "${COLOR_name}HOSTNAME${RESET} = ${COLOR_value}$HOSTNAME${RESET}"
echo -e "${COLOR_name}TIMEZONE${RESET} = ${COLOR_value}$TIMEZONE${RESET}"
echo -e "${COLOR_name}USER${RESET} = ${COLOR_value}$USER${RESET}"
echo -e "${COLOR_name}OS${RESET} = ${COLOR_value}$OS${RESET}"
echo -e "${COLOR_name}DATE${RESET} = ${COLOR_value}$DATE${RESET}"
echo -e "${COLOR_name}UPTIME${RESET} = ${COLOR_value}$UPTIME${RESET}"
echo -e "${COLOR_name}IP${RESET} = ${COLOR_value}$IP${RESET}"
echo -e "${COLOR_name}MASK${RESET} = ${COLOR_value}$MASK${RESET}"
echo -e "${COLOR_name}GATEWAY${RESET} = ${COLOR_value}$GATEWAY${RESET}"
echo -e "${COLOR_name}RAM_TOTAL${RESET} = ${COLOR_value}$RAM_TOTAL${RESET}"
echo -e "${COLOR_name}RAM_USED${RESET} = ${COLOR_value}$RAM_USED${RESET}"
echo -e "${COLOR_name}RAM_FREE${RESET} = ${COLOR_value}$RAM_FREE${RESET}"
echo -e "${COLOR_name}SPACE_ROOT${RESET} = ${COLOR_value}$SPACE_ROOT${RESET}"
echo -e "${COLOR_name}SPACE_ROOT_USED${RESET} = ${COLOR_value}$SPACE_ROOT_USED${RESET}"
echo -e "${COLOR_name}SPACE_ROOT_FREE${RESET} = ${COLOR_value}$SPACE_ROOT_FREE${RESET}"


function color () {
WHITE=1
RED=2
GREEN=3
BLUE=4
PURPLE=5
BLACK=6

if [ $1 == $WHITE ] && [ $1 == $2 ]; then
    echo "default (белый)" 
elif [ $1 == $WHITE ]; then
     echo "$1 (белый)" 
fi

if [ $1 == $RED ] && [ $1 == $2 ]; then
    echo "default (красный)" 
elif [ $1 == $RED ]; then
     echo "$1 (красный)" 
fi

if [ $1 == $GREEN ] && [ $1 == $2 ]; then
    echo "default (зеленый)" 
elif [ $1 == $GREEN ]; then
     echo "$1 (зеленый)" 
fi

if [ $1 == $BLUE ] && [ $1 == $2 ]; then
    echo "default (синий)" 
elif [ $1 == $BLUE ]; then
     echo "$1 (синий)" 
fi

if [ $1 == $PURPLE ] && [ $1 == $2 ]; then
    echo "default (фиолетовый)" 
elif [ $1 == $PURPLE ]; then
     echo "$1 (фиолетовый)" 
fi

if [ $1 == $BLACK ] && [ $1 == $2 ]; then
    echo "default (черный)"
elif [ $1 == $BLACK ]; then
     echo "$1 (черный)" 
fi
}


echo -e "\nColor Scheme"
echo "---------------------"
echo "Column 1 background = $(color $column1_background $default_col1_bg)"
echo "Column 1 font color = $(color $column1_font_color $default_col1_font)"
echo "Column 2 background = $(color $column2_background $default_col2_bg)"
echo "Column 2 font color = $(color $column2_font_color $default_col2_font)"
echo "--------------------"