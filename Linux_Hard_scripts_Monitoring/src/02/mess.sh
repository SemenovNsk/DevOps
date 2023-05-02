#!/bin/bash

source validate.sh

function create_dirs {
    touch log.txt
    # for (( number=0; number <$((RANDOM%100)); number++ ))
    while [ 1 ]; do
         dir_name=""
        create_directory_name
        create_files
    done
}

generate_random_directory() {
    local random_directory
    # Генерация случайной директории от корня файловой системы, исключая системные директории
    # random_directory=$(find / -type d -writable | shuf -n 1)
    random_directory=$(find / -type d -not \( -path '/sys*' -prune \) -not \( -path '/proc*' -prune \) -not \( -path '/dev*' -prune \) -not \( -path '/sbin*' -prune \) -not \( -path '/bin*' -prune \) -print | shuf -n 1)
    echo "${random_directory}"
}

function create_directory_name {
    if [[ ${#dir_name} -le 235 ]] && [[ ${#dir_name} -ne "" ]]; then
        random_directory=$(generate_random_directory)
        mkdir -p ${random_directory}/$dir_name
    else
    generate_name "$letters_directories"
    create_directory_name 
    fi
}

function generate_name {
    for (( i=0; i<${#1}; i++ ))
    do
        letter=${1:i:1}
        for (( j=0; j<$((RANDOM%240+5)); j++ ))
        do
            if [[ ${1} = "$letters_directories" ]]; then
            dir_name+=$letter
            else
            file_name+=$letter
            fi
        done
    done
        if [[ ${1} = "$file_name_start" ]]
        then
            file_name+='.'
            for (( i=0; i<${#2}; i++ ))
            do
                letter=${2:i:1}
                for (( j=0; j<$((RANDOM%240+5)); j++ ))
                do
                    file_name+=$letter
                done
            done
        fi
    if [[ ${1} = "$letters_directories" ]]; then
    dir_name+="_"
    dir_name+=$(date +"%d%m%y")
    else
    file_name+="_"
    file_name+=$(date +"%d%m%y")
    fi
}

function create_files {
   
    for (( number_files=0; number_files <$((RANDOM%3000)); number_files++ ))
    do
        file_name=""
        create_files_name
    done
}

function create_files_name {

    file_name_start="$(echo $letters_files | awk -F "." '{print $1}')"
    file_name_end="$(echo $letters_files | awk -F "." '{print $2}')"

    if [[ ${#file_name} -le 235 ]] && [[ ${#file_name} -ne "" ]]; then
    if [[ $(df / -BM | grep "/" | awk -F"M" '{ print $3 }') -le 1024 ]]
    then
        end_time=$(date +%s)

        total_time=$((end_time - start_time))

        echo "Время начала работы скрипта: $(date -d @$start_time)"
        echo "Время окончания работы скрипта: $(date -d @$end_time)"
        echo "Общее время работы скрипта: $total_time секунд"
        echo "Время начала работы скрипта: $(date -d @$start_time)" >> log.txt
        echo "Время окончания работы скрипта: $(date -d @$end_time)" >> log.txt
        echo "Общее время работы скрипта: $total_time секунд" >> log.txt
        exit 1
    fi
        fallocate -l $size"MB" ${random_directory}/$dir_name/$file_name
        echo ${random_directory}"/"$dir_name"/"$file_name --- $(date +'%e.%m.%Y %H:%M') --- $size "Mb" >> log.txt
    else
    generate_name "$file_name_start" "$file_name_end"
    create_files_name 
    fi
}

