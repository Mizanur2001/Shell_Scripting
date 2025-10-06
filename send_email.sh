#!/bin/bash

###################################

#Author: Mizanur Rahaman
#Date: 06/10/2025
#time: 10:16 AM
#Version: v_1.0.0
#About: Send Email

###################################

#set -x
set -e
set -o pipefail

SMTP_SERVER="smtp://smtp.gmail.com:587"
FROM="SENDER_EMAIL@gmail.com"
TO="RECIPIENT_EMAIL@gmail.com"
SUBJECT="Test Email from Shell Script"
BODY="This email was sent using curl and SMTP."

curl --url "$SMTP_SERVER" \
     --ssl-reqd \
     --mail-from "$FROM" \
     --mail-rcpt "$TO" \
     --user "$FROM:APP_PASSWORD" \
     -T <(echo -e "From: $FROM\nTo: $TO\nSubject: $SUBJECT\n\n$BODY")
