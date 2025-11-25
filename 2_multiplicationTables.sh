#!/bin/bash

#---------------------------------
#Author: Masyud Hossain
#Date: 25/11/2025
#Task: Multiplication Table 1,2,3
#---------------------------------


echo "Print the multiplication table of 1 to 10 "

for i in {1..10}
do
	for j in {1..10} 
	do
		echo "$i * $j = $((i*j))"
	done
	echo " "
done

