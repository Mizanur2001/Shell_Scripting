#!/bin/bash

#---------------------------------
#Author: Masyud Hossain
#Date: 29/12/2025
#Task: Creates a folder and generates multiple user text files containing a time-based greeting determined at the moment the script is run.
#-------------------------------------------------------------

echo -n "Enter the folder name: "
read folder_Name

mkdir -p "$folder_Name"

echo "How many files you want to generate?"
read count

Hour=$(date +"%H")

if(( Hour >= 5 && Hour < 12 )); then
        Greeting="Good Morning"
elif(( Hour >= 12 && Hour < 17 ));then
        Greeting="Good Afternoon"
elif(( Hour >= 17 && Hour < 21 ));then
        Greeting="Good Evenning"
else
        Greeting="Good Night"
fi

for(( i=1; i<=count; i++))
do
File="$folder_Name/user$i.txt"
echo "$Greeting, user$i!" > "$File"
echo "Created $File"
done

echo "All files created successfully."

