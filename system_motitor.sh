#!/bin/bash

##########################

#Author: Mizanur Rahaman
#Date: 06/10/2025
#Time: 10:36 AM
#Version: V_1.0.0
#About: System Helth Monitor

###########################

set -x
set -e
set -o pipefail

#==========THRESHOLD Vaues======

CPU_THRESOLD=30
RAM_THRESOLD=20
DISK_THRESOLD=20

#----------SEND EMAIL----------

#	:TODO:


#--------CPU helth----------

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{for(i=1;i<=NF;i++){if($i ~ /id,?$/){print 100 - $(i-1)}}}')
CPU_USAGE_INT=${CPU_USAGE%.*}
echo "CPU Usage: $CPU_USAGE_INT%"



