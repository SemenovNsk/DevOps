#!/bin/bash




# Define variables
HOSTNAME=$(hostname)
TIMEZONE=$(timedatectl | grep "Time zone" | awk '{print $3}')
USER=$(whoami)
OS=$(cat /etc/issue | sed -r '/^\s*$/d' | awk '{print $1,$2,$3}')
DATE=$(date +"%d %b %Y %T")
UPTIME=$(uptime -p | sed 's/up //')
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
IP=$(hostname -I | awk '{print $1}')
default=$(ip route | grep default | awk '{print $5}')
MASK=$(ip a | grep $default | awk '/inet /{print $2}' | cut -d '/' -f 2)
GATEWAY=$(ip route | grep default | awk '{print $3}')
RAM_TOTAL=$(free -m | awk '/Mem:/{printf " %.3fGb\n", $2/1024}')
RAM_USED=$(free -m | awk '/Mem:/{printf " %.3fGb\n", $3/1024}')
RAM_FREE=$(free -m | awk '/Mem:/{printf " %.3fGb\n", $4/1024}')
SPACE_ROOT=$(df -h / | awk '/\// {print $2}')
SPACE_ROOT_USED=$(df -h / | awk '/\// {print $3}')
SPACE_ROOT_FREE=$(df -h / | awk '/\// {print $4}')

