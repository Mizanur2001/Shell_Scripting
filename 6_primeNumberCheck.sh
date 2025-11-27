#!/bin/bash

#--------------------------------------
#Author: Masyud Hossain
#Date:27/11/2025
#Task: Check whether Number is prime or not
#------------------------------------------


echo "Prime Number check"
n=10

for(( i=2; i<=$n/2; i++))
do
	if((n%i == 0));then
		echo "$n is not a prime number"
		exit 0
	fi
done
echo "$n is a prime number"
