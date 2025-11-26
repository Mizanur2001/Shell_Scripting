#!/bin/bash

#----------------------------------
#Auhtor: Masyud Hossain
#Date: 26/11/2025
#Task: Check a year is leap year or not
#----------------------------------

for i in {2000..2025}
do
	if(( ($i % 400 == 0) || ( $i % 4 == 0 && $i % 100 != 0 ) ));
	then
		echo "$i is leap year";
	else
		echo "$i is not a leap year";
	fi
done
