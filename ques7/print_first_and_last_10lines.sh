#!/bin/bash
log_file_name="access.log"
output_file_name="output.txt"
first_10_lines=$(head -10 "$log_file_name")
last_10_lines=$(tail -10 "$log_file_name")
echo "$first_10_lines" > "$output_file_name"
echo "$last_10_lines" >> "$output_file_name"
