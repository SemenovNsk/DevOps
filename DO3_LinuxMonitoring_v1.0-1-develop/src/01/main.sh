#!/usr/bin/env bash

check_is_number() {
    pattern='^[+-]?[0-9]+([.][0-9]+)?$'
    if [[ $# = 0 ]]; then
        read -p "No args, please enter a number: " input
        check_is_number "$input"
    elif [[ $# = 1 ]]; then
        if [[ $1 =~ $pattern ]]; then
            echo "Valid input: $1"
        else
            echo "Invalid input: $1"
            read -p "Please try input a number: " input
            check_is_number "$input"
        fi
    elif [[ $# -gt 1 ]]; then
        echo "Too many parameters, please enter only one."
        read -p "Try one time more " input
        check_is_number "$input"
    fi
}

check_is_number "$@"