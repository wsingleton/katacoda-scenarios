#!/bin/bash

echo "done" >> /tmp/katacoda-finished

if [ -e /root/submission.json ]; 
then
    curl \
        -X POST \
        -H "Content-Type: application/json" \
        -d @/root/submission.json \
        http://harvester-env.eba-9zpjj7px.us-east-1.elasticbeanstalk.com/harvester/submissions \
    >> /root/response.json
    echo "Scenario details submitted."
else
    echo "No scenario data to submit."
fi

echo "done" >> /tmp/katacoda-background-finished
