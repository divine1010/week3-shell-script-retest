#!/bin/bash
memory_info=$(free | grep 'Mem:')
total_memory=$(echo "$memory_info" | awk '{print $2}')
used_memory=$(echo "$memory_info" | awk '{print $3}')
memory_used_percentage=$(awk "BEGIN {printf \"%.2f\",($used_memory / $total_memory) * 100 }")
echo "Percentage of used memory: $memory_used_percentage%"
