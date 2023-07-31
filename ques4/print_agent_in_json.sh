#!/bin/bash
json_data=$(cat cloudwatch.json)
agent_data=$(echo "$json_data" | jq '.agent')
echo "$agent_data"
