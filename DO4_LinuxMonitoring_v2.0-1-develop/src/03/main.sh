#!/bin/bash

clean_method=$1

if [ $clean_method == "1" ]
then
  # Deleting by log file
  while read line
  do
    file_to_delete=$(echo $line | awk '{print $1}' | xargs dirname)
    rm -rf $file_to_delete
  done < ../02/log.txt
elif [ $clean_method == "2" ]
then
  read -p "Enter the start date and time (YYYY-MM-DD HH:MM):" start_date start_time
  read -p "Enter the end date and time (YYYY-MM-DD HH:MM):" end_date end_time

find / -writable -type d -newermt "$start_date $start_time" -not -newermt "$end_date $end_time" 2>/dev/null | grep -E '[a-zA-Z]{4,}_[0-9]{6}' | xargs rm -rf

elif [ $clean_method == "3" ]
then
  # Deleting by name mask
  echo "Enter the name mask:"
  read name_mask
  while read line
  do
    file_to_delete=$(echo $line | awk '{print $1}')
    if [[ $file_to_delete == *$name_mask* ]]
    then
      file_to_delete=$(echo $line | awk '{print $1}' | xargs dirname)
      rm -rf $file_to_delete
    fi
  done < ../02/log.txt
else
  echo "Invalid cleaning method specified."
fi

