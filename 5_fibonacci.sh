#!/bin/bash

#-------------------------------------
#Author: Masyud Hossain
#Date: 27/11/2025
#Task: Print fibonacci serise till n
#-------------------------------------

echo -n "Fibonacci Series: "

a=0
b=1
n=6

for i in {0..6}
do 
	echo -n "$a "
	c=$((a+b))
	a=$b
	b=$c
done
echo ""

