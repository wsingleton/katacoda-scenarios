#!/bin/bash

echo "done" >> /root/katacoda-finished

if [ -e /root/submission.json ]; 
then
    curl \
        -X POST \
        -H "Content-Type: application/json" \
        -d @/root/submission.json \
        http://harvester-env.eba-9zpjj7px.us-east-1.elasticbeanstalk.com/harvester/katacoda-scenario/submissions \
    >> /root/response.json
    echo "Scenario details submitted."
else
    echo "No scenario data to submit."
fi

echo "done" >> /root/katacoda-background-finished
