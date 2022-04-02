#!/bin/bash

set +o verbose

if [ -e /root/submission.json ]; 
then
curl \
    -X POST \
    -H "Content-Type: application/json" \
    -d @/root/submission.json \
    http://harvester-env.eba-9zpjj7px.us-east-1.elasticbeanstalk.com/harvester/katacoda-scenario/submissions \
>> /root/response.json
else
    echo "No scenario data to submit."
fi
clear
