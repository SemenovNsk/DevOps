#!/bin/bash
source define_v.sh
source config.conf

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

# Default color scheme
default_col1_bg=6
default_col1_font=1
default_col2_bg=2
default_col2_font=4

# Define color codes array
bg_color_names=($WHITE $RED $GREEN $BLUE $PURPLE $BLACK)
fg_color_names=($WHITE_F $RED_F $GREEN_F $BLUE_F $PURPLE_F $BLACK_F)

# Set color scheme if not defined
if [ -z "$column1_background" ]; then
  column1_background="$default_col1_bg"
fi
if [ -z "$column1_font_color" ]; then
  column1_font_color="$default_col1_font"
fi
if [ -z "$column2_background" ]; then
  column2_background="$default_col2_bg"
fi
if [ -z "$column2_font_color" ]; then
  column2_font_color="$default_col2_font"
fi


# Define parameters
bg_color_name=${bg_color_names[$column1_background-1]}
fg_color_name=${fg_color_names[$column1_font_color-1]}
bg_color_value=${bg_color_names[$column2_background-1]}
fg_color_value=${fg_color_names[$column2_font_color-1]}

COLOR_name="\033[${bg_color_name};${fg_color_name}m"
COLOR_value="\033[${bg_color_value};${fg_color_value}m"

