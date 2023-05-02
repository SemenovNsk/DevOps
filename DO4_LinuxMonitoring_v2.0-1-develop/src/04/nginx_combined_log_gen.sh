#!/bin/bash


for i in {1..5}
do
    num_entries=$((RANDOM%901+100))
    
   date="$(date +%Y)-$(date +%m)-$(date +%d) 00:00:00 $(date +%z)"
    seconds=$(shuf -i 10-60 -n1)
    
    # touch $log_file
    
    for j in $(seq $num_entries)
    do
        # Generate random IP
        ip=$(printf "%d.%d.%d.%d\n" "$((RANDOM % 256))" "$((RANDOM % 256))" "$((RANDOM % 256))" "$((RANDOM % 256))")
        
        # Generate random response code
        response_codes=(200 201 400 401 403 404 500 501 502 503)
        response_code=${response_codes[$RANDOM % ${#response_codes[@]}]}
        
        # Generate random method
        methods=(GET POST PUT PATCH DELETE)
        method=${methods[$RANDOM % ${#methods[@]}]}
        
        # Generate random date within the specified log day
        time=$(date -d "$date + $seconds seconds"  +'%d/%b/%Y:%H:%M:%S %z')

        
        # Generate random agent request URL
        url=$(echo "/$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)")
        
        # Generate random agent
        agents=("Mozilla" "Google Chrome" "Opera" "Safari" "Internet Explorer" "Microsoft Edge" "Crawler and bot" "Library and net tool")
        agent=${agents[$RANDOM % ${#agents[@]}]}
        
        # Write entry to log file
        echo "$ip - - [$time] \"$method $url HTTP/1.1\" $response_code $((RANDOM % 1000)) \"$url\" \"$agent\"" >> log$i.file
    done
done

# Response codes:
# 200 - OK
# 201 - Created
# 400 - Bad Request
# 401 - Unauthorized
# 403 - Forbidden
# 404 - Not Found
# 500 - Internal Server Error
# 501 - Not Implemented
# 502 - Bad Gateway
# 503 - Service Unavailable

# Methods:
# GET
# POST
# PUT
# PATCH
# DELETE

# Agents:
# Mozilla
# Google Chrome
# Opera
# Safari
# Internet Explorer
# Microsoft Edge
# Crawler and bot
# Library and net tool