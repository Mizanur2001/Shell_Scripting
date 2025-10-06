#!/bin/bash

##################################

#Author : Mizanur Rahahaman
#Question : Number Divisible by 5 & 3 but not 15 (range: 0 to 100)

##################################

set -e
set -o pipefail

for i in {0..100}
do

if(( $i % 3 == 0 || $i % 5 == 0));
then
     if(( $i % 15 == 0));
     then
	     continue;

     fi
     echo $i;
fi
done

