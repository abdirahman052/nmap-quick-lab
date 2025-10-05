#!/bin/bash
echo "Starting Nmap Scan ..." 
echo "Choose scan level: 1) Basic 2) Medium 3) Intense"
read -p "Select 1/2/3:" level 
echo "You chose level: $level"
mkdir -p results 
while read -r ip; do
# Skip empty or commented lines 
[ -z "$ip" ] && continue 
[[ "$ip" =~ ^# ]] && continue 
echo "Scanning $ip ..."
if [ "$level" = "1" ]; then 
nmap -sV -oN "results/${ip}_basic.txt"  "$ip"
elif [ "$level" = "2" ]; then
nmap -p- -sV -A -T4 -oN "results/${ip}_medium.txt" "$ip"
elif [ "$level" = "3" ]; then
echo "Running INTENSE scan on $ip ..."
nmap -p- -T4 -A -v --max-retries 2 --max-rtt-timeout 500ms --host-timeout 5m -oN "results/${ip}_intense.txt" "$ip"
else
echo "Invalid level - skipping $ip"
fi
done < iplist.txt
