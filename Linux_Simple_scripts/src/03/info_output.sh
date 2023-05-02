#!/bin/bash
source define_v.sh

# Define color background
WHITE=47
RED=41
GREEN=42
BLUE=44
PURPLE=45
BLACK=40
# Define color font
WHITE_F=37
RED_F=31
GREEN_F=32
BLUE_F=34
PURPLE_F=35
BLACK_F=30
RESET='\033[0m'

# Define color codes array
bg_color_names=($WHITE $RED $GREEN $BLUE $PURPLE $BLACK)
fg_color_names=($WHITE_F $RED_F $GREEN_F $BLUE_F $PURPLE_F $BLACK_F)

# Define parameters
bg_color_name=${bg_color_names[$1-1]}
fg_color_name=${fg_color_names[$2-1]}
bg_color_value=${bg_color_names[$3-1]}
fg_color_value=${fg_color_names[$4-1]}

COLOR_name="\033[${bg_color_name};${fg_color_name}m"
COLOR_value="\033[${bg_color_value};${fg_color_value}m"
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