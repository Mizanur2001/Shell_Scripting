#!/bin/bash

#############################################

#Author: Mizanur Rahaman
#Question: Count the number of 's' present in the word "MISSISSIPPI"

#############################################

set -e
set -o pipefail

word="helloSS"

echo $word | grep -o "S" | wc  
