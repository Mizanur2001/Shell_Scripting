#!/bin/bash

#------------------------------------------------------------------------------------
#Author: Masyud Hossain
#Date: 3/12/2025
#Task: Send a request to the backend endpoint that provides full server and websites information.
#------------------------------------------------------------------------------------

echo "Enter API URL: "
read API_URL
echo "Enter Bearer Token: "
read TOKEN

echo "----------Calling Server Info API----------------"

response=$(curl -X GET "$API_URL" -H "Authorization: Bearer $TOKEN")

body="${response}"
echo "$body" | jq

