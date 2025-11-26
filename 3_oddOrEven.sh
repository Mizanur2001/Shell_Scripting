#!/bin/bash

#--------------------------------------
#Author: Masyud Hossain
#Date: 26/11/2025
#Task: Check number is odd or even
#--------------------------------------

echo "Check the is odd or even"

for i in {1..100}
do
	if (( $i % 2 ==  0 ));
	then
		echo "$i is Even"
	else
		echo "$i is Odd"
	fi
done
