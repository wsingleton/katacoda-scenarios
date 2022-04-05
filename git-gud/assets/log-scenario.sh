#!/bin/bash
set +o verbose

if [ -e submission.json ]; 
then
    rm submission.json
fi

read -p "Would you like for your information to be submitted when you complete this scenario? [y/n] " answer
if [ "$answer" = "y" ] || [ "$answer" = "Y" ] || [ "$answer" = "yes" ] || [ "$answer" = "YES" ];
then
    read -p "First name: " firstName
    read -p "Last name: " lastName
    read -p "Email address: " email
    submissionJson="{
    \"scenarioId\":\"3acb5508-d71a-439c-8e82-14ccacddff1b\",
    \"submitter\":\"email\":\"${email}\"
}\n"
    printf "$submissionJson" >> /root/submission.json
fi
echo "When you are ready, please continue to the next step."
