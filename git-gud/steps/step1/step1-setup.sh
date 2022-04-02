#!/bin/bash

echo "TODO: step setup implementation"
rm /root/project/ -R
rm /root/target/ -R 
wget "https://katakoda-scenario-assets.s3.amazonaws.com/study-cards.zip" -q -O study-cards.zip
unzip study-cards.zip >> /dev/null
rm study-cards.zip
clear
echo 'Would you like to submit your completion of this scenario? [y/n] '
read answer
if [["${answer,,}" == "y"]] || [["${answer,,}" == "yes"]];
then
    read -p "First name: " firstName
    read -p "Last name: " lastName
    read -p "Email address: " email
    submissionJson="{
        \"scenarioId\":\"3acb5508-d71a-439c-8e82-14ccacddff1b\",
        \"submitter\":{
            \"firstName\":\"${firstName}\",
            \"lastName\":\"${lastName}\",
            \"email\":\"${email}\"
        }
    }"
    printf "$submissionJson" >> /root/submission.json
fi
echo "When you are ready, please continue to the next step."