#!/bin/bash
source validate.sh
. ./m.sh

start_time=$(date +%s)
check
create_dirs
end_time=$(date +%s)

total_time=$((end_time - start_time))

echo "Время начала работы скрипта: $(date -d @$start_time)"
echo "Время окончания работы скрипта: $(date -d @$end_time)"
echo "Общее время работы скрипта: $total_time секунд"
echo "Время начала работы скрипта: $(date -d @$start_time)" >> log.txt
echo "Время окончания работы скрипта: $(date -d @$end_time)" >> log.txt
echo "Общее время работы скрипта: $total_time секунд" >> log.txt
