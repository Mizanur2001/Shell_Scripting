#!/bin/bash

###################################

#Author: Mizanur Rahaman
#Date: 05/10/2025
#Time: 10:28 PM
#Version: V1.0.0
#About: Get Collaborator Info from git repo

####################################

set -e
#set -x
set -o pipefail

#----------Helper-------

if(($# != 2)); then
	echo "This Require Two Arguent"
	echo "first Owner of the Repo"
	echo "second Repo name "
	echo "eg: file_name.sh OWNER REPO"
fi

#----------Get the Variable------
OWNER=$1
REPO=$2
PAT_TOKEN='YOUR_PAT_TOKEN_HERE'  # Replace with your actual PAT token

Response=$(curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $PAT_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$OWNER/$REPO/collaborators)

echo -e "UserName\tID"

echo $Response | jq -r '.[] | "\(.login)\t\(.id)"'


