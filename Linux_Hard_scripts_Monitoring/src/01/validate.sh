#!/bin/bash 

 count_parametrs=${#}
 path=${1}
 count_directories=${2}
 letters_directories=${3}
 count_files=${4}
 letters_files=${5}
 size=${6}


function check {
    if [[ $count_parametrs -ne 6 ]]; then 
        echo "invalid quantity of parametrs"
        exit 6
        fi


last=$(echo "${path}" | tail -c 2)
first=$(echo "${path}" | head -c 1)
if [[ $last != '/' ]] || [[ $first != '/' ]] || ! [[ -d ${path} ]]; then 
echo "wrong path"
exit 4
fi

regex2='^[1-9]+$'
if ! [[ $count_directories =~ $regex2 ]]; then
    echo "2nd parametr can be only numeral"
    exit 1
    fi

regex3='^[a-zA-Z]{1,7}$'
if ! [[ $letters_directories =~ $regex3 ]]; then
    echo "3d parametr can be only latinos letters, max 7 letters"
    exit 1
    fi

if ! [[ $count_files =~ $regex2 ]]; then
    echo "4th parametr can be only numeral"
    exit 1
    fi

regex4='^[a-zA-Z]{1,7}[.][a-zA-Z]{1,3}$'
if ! [[ $letters_files =~ $regex4 ]]; then
    echo "5th parametr can be only latinos letters, in first part max 7, in 2nd 3 letters"
    exit 1
    fi

regex5='^[1-9][0-9]?[0]?kb$'
    if ! [[ $size =~ $regex5 ]]
    then
        echo "incorrect size"
        exit 1
    else
        # size=${size%??}
       size=${size:0:${#size}-2}

    fi
}
