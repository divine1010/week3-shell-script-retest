#!/bin/bash
jq '.logs."logs_collected".files.collect_list[0]."log_group_name" = "devops-shell-script"' cloudwatch.json > tmp.json && mv tmp.json cloudwatch.json
