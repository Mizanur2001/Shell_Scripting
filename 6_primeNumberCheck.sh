#!/bin/bash

#--------------------------------------
#Author: Masyud Hossain
#Date:27/11/2025
#Task: Check whether Number is prime or not
#------------------------------------------


echo "Prime Number check"
n=7
if((n<=0));then
	echo "You enter negative numbr or zero"
	exit 0
elif((n==1));then
	echo "The number one is neither a prime nor a composite"
	exit0
else {

for(( i=2; i<=$n/2; i++))
do
	if((n%i == 0));then
		echo "$n is not a prime number"
		exit 0
	fi
done

}
fi
echo "$n is a prime number"
