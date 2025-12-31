#!/bin/bash

#----------------------------------------
#Author: Masyud Hossain
#Date:30/12/2025
#Task: System usage script
#----------------------------------------


echo "-------------------------------------"
echo "System Usage Report"
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "-------------------------------------"

###------------------Cpu Usage-----------------###
Cpu_Usage=$(top -bn1 | grep "Cpu(s)" | awk '{for(i=1;i<=NF;i++){if($i ~ /id,?$/){print 100 - $(i-1)}}}')
Cpu_Usage_Int=${Cpu_Usage%.*}

echo "Cpu Usage: ${Cpu_Usage_Int}%"

###------------------Ram Usage----------------###
Total_Mem=$(free -m | awk '/Mem:/ {print $2}')
Used_Mem=$(free -m | awk '/Mem:/ {print $3}')
Ram_Usage_Percent=$(( Used_Mem * 100 / Total_Mem ))

echo "RAM Usage: ${Used_Mem}MB / ${Total_Mem}MB (${Ram_Usage_Percent}%)"

###-----------------Disk Usage---------------###
Disk_Usage=$(df -h / | awk 'NR==2 {print $5}')
Disk_Used=$(df -h / | awk 'NR==2 {print $3}')
Total_Disk=$(df -h / | awk 'NR==2 {print $2}')

echo "Disk Usage: ${Disk_Used} / ${Total_Disk} (${Disk_Usage})"
