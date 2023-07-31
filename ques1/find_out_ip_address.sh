#!/bin/bash
ip_address=$(curl -s https://ifconfig.me/ip)
jq '.ip = "$ip_address"' 
serverdetails.json > tempfile.json && mv tempfile.json serverdetails.json
