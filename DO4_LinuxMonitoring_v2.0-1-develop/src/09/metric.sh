#!/bin/bash

while true
do
    # Get system metrics
    cpu_usage=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2}')
    ram_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')
    disk_usage=$(df -h / | awk '{print $5}' | tail -n 1 | sed 's/%//')

    # Generate Prometheus-formatted HTML page

    rm /var/www/html/index.html
    echo s21_cpu_usage $cpu_usage >> /var/www/html/index.html
    echo s21_ram_usage $ram_usage >> /var/www/html/index.html
    echo s21_disk_usage $disk_usage >> /var/www/html/index.html


    # sudo mv metrics.html /var/www/html/index.html

    sleep 3
done
