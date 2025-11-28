#!/bin/bash

#-----------------------------------
#Author: Masyud Hossain
#Date: 28/11/2025
#Task: peramid * print
#-----------------------------------

echo "Print peramid pattern"
n=5

for((i=0;i<n;i++))
do
	for((j=0;j<=n-i;j++))
	do
		echo -n " "
	done

	for((j=0;j<=i;j++))
	do
		echo -n "* "
	done

	echo ""
done
echo ""

