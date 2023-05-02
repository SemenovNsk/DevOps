#!/bin/bash
# # Define color background
# WHITE=47
# RED=41
# GREEN=42
# BLUE=44
# PURPLE=45
# BLACK=40
# # Define color font
# WHITE_F=37
# RED_F=31
# GREEN_F=32
# BLUE_F=34
# PURPLE_F=35
# BLACK_F=30
# RESET='\033[0m'
# REDU='\033[41m'


# # Define color codes
# bg_color_names=($WHITE $RED $GREEN $BLUE $PURPLE $BLACK)
# fg_color_names=($WHITE_F $RED_F $GREEN_F $BLUE_F $PURPLE_F $BLACK_F)

# # Define parameters
# bg_color_name=${bg_color_names[$1-1]}
# fg_color_name=${fg_color_names[$2-1]}
# bg_color_value=${bg_color_names[$3-1]}
# fg_color_value=${fg_color_names[$4-1]}

# COLOR_name="\033[${bg_color_name};${fg_color_name}m"
# COLOR_value="\033[${bg_color_value};${fg_color_value}m"


# # Check if the font and background colors of one column match



if [ $# -ne 4 ]; then
   echo "dskjn fsdjnbd"
    exit
    
else
     if [ "$1" -eq "$2" ] || [ "$3" -eq "$4" ]; then
    echo -e "${REDU}Error:${RESET} The font and background colors of one column match."
    read -p "Do you want to try again? (Y/N) " answer
    
    if [[ "$answer" =~ ^[Yy]$ ]]; then
        ./info_output.sh "$@"
        else
        exit 0
        fi
    else
        ./info_output.sh
        exit
    fi

fi




# # Define variables
# HOSTNAME=$(hostname)
# TIMEZONE=$(timedatectl | grep "Time zone" | awk '{print $3}')
# USER=$(whoami)
# OS=$(cat /etc/issue | sed -r '/^\s*$/d' | awk '{print $1,$2,$3}')
# DATE=$(date +"%d %b %Y %T")
# UPTIME=$(uptime -p | sed 's/up //')
# UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
# IP=$(hostname -I | awk '{print $1}')
# default=$(ip route | grep default | awk '{print $5}')
# MASK=$(ip a | grep $default | awk '/inet /{print $2}' | cut -d '/' -f 2)
# GATEWAY=$(ip route | grep default | awk '{print $3}')
# RAM_TOTAL=$(free -m | awk '/Mem:/{printf " %.3fGb\n", $2/1024}')
# RAM_USED=$(free -m | awk '/Mem:/{printf " %.3fGb\n", $3/1024}')
# RAM_FREE=$(free -m | awk '/Mem:/{printf " %.3fGb\n", $4/1024}')
# SPACE_ROOT=$(df -h / | awk '/\// {print $2}')
# SPACE_ROOT_USED=$(df -h / | awk '/\// {print $3}')
# SPACE_ROOT_FREE=$(df -h / | awk '/\// {print $4}')

# # Print the information to the console with colors
# echo -e "${COLOR_name}HOSTNAME${RESET} = ${COLOR_value}$HOSTNAME${RESET}"
# echo -e "${COLOR_name}TIMEZONE${RESET} = ${COLOR_value}$TIMEZONE${RESET}"
# echo -e "${COLOR_name}USER${RESET} = ${COLOR_value}$USER${RESET}"
# echo -e "${COLOR_name}OS${RESET} = ${COLOR_value}$OS${RESET}"
# echo -e "${COLOR_name}DATE${RESET} = ${COLOR_value}$DATE${RESET}"
# echo -e "${COLOR_name}UPTIME${RESET} = ${COLOR_value}$UPTIME${RESET}"
# echo -e "${COLOR_name}IP${RESET} = ${COLOR_value}$IP${RESET}"
# echo -e "${COLOR_name}MASK${RESET} = ${COLOR_value}$MASK${RESET}"
# echo -e "${COLOR_name}GATEWAY${RESET} = ${COLOR_value}$GATEWAY${RESET}"
# echo -e "${COLOR_name}RAM_TOTAL${RESET} = ${COLOR_value}$RAM_TOTAL${RESET}"
# echo -e "${COLOR_name}RAM_USED${RESET} = ${COLOR_value}$RAM_USED${RESET}"
# echo -e "${COLOR_name}RAM_FREE${RESET} = ${COLOR_value}$RAM_FREE${RESET}"
# echo -e "${COLOR_name}SPACE_ROOT${RESET} = ${COLOR_value}$SPACE_ROOT${RESET}"
# echo -e "${COLOR_name}SPACE_ROOT_USED${RESET} = ${COLOR_value}$SPACE_ROOT_USED${RESET}"
# echo -e "${COLOR_name}SPACE_ROOT_FREE${RESET} = ${COLOR_value}$SPACE_ROOT_FREE${RESET}"

