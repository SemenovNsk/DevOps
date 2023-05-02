#!/usr/bin/env bash
source declare_v.sh

RED='\033[1;31m' # Define red color and bold style
BLUE='\033[1;36m' # Define red color and bold style
RESET='\033[0m' # Define reset sequence

# print the results
echo -e "${RED}Total number of folders (including all nested ones)${RESET} = $num_folders"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}TOP 5 folders of maximum size arranged in descending order (path and size):${RESET}"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo "$top_folders"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Total number of files${RESET} = $num_files"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Number of:${RESET}"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Configuration files (with the .conf extension)${RESET} = $num_conf_files"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Text files${RESET} = $num_txt_files"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Executable files${RESET} = $num_exe_files"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Log files (with the extension .log)${RESET} = $num_log_files"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Archive files${RESET} = $num_archives"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Symbolic links${RESET} = $num_links"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}TOP 10 files of maximum size arranged in descending order (path, size and type):${RESET}"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo "$top_files"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):${RESET}"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo "$top_executable_files"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo "$get_MD5SUM"
echo -e "${BLUE}----------------------------------------------${RESET}"
echo -e "${RED}Script execution time (in seconds)${RESET} = $execution_time"