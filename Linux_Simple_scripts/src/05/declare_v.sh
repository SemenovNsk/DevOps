#!/usr/bin/env bash
start_time=$(date +%s.%N)

# save the path to the directory in a variable
path=$1

# count the total number of folders, including subfolders
num_folders=$(find "$path" -type d | wc -l)

# find the top 5 folders with largest size in descending order
top_folders=$(du -hs "$path"/* 2>/dev/null | sort -hr | head -5)

# count the total number of files
num_files=$(find "$path" -type f | wc -l)

# count the number of each type of file
num_conf_files=$(find "$path" -type f -name "*.conf" | wc -l)
num_txt_files=$(find "$path" -type f -name "*.txt" | wc -l)
num_exe_files=$(find "$path" -type f -executable | wc -l)
num_log_files=$(find "$path" -type f -name "*.log" | wc -l)
num_archives=$(find "$path" -type f \( -name "*.tar" -o -name "*.zip" \) | wc -l)
num_links=$(find "$path" -type l | wc -l)

# find the top 10 files with largest size in descending order
top_files=$(find "$path" -type f -printf "%s\t%p\n" | sort -hr | head -10 | awk '{printf "%s - %s bytes - %s\n", $2, $1, substr($2, length($2)-2, 3)}')

# find the top 10 executable files with largest size in descending order and their MD5 hash
top_executable_files=$(find "$path" -type f -executable -printf "%s\t%p\n" | sort -hr | head -10 | awk '{printf "%s - %s bytes - %s\n", $2, $1, substr($2, length($2)-2, 3)}')
get_MD5SUM=$(find "$path" -type f -executable -printf "%s\t%p\n" | sort -hr | head -10 | awk '{system("md5sum \""$2"\"")}' | awk '{printf "%s - %s \n", $2, $1}')
# get the execution time of the script
end_time=$(date +%s.%N)
execution_time=$(echo "$end_time - $start_time" | bc)