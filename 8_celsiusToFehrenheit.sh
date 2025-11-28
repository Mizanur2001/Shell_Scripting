#!/bin/bash

#-------------------------------------
#Author: Masyud Hossain
#Date: 28/11/2025
#Task: Convert celsius to fehrenheit
#------------------------------------

C=36

echo "Temperature in celsius $C"

F=$(( (C * 9) / 5 + 32 ))

echo "$F"

