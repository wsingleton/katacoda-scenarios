#!/bin/bash

echo "Submitting scenario..."
curl -X POST -H "Content-Type: application/json" -d @/root/scenario-submission-details.json http://harvester-env.eba-9zpjj7px.us-east-1.elasticbeanstalk.com/harvester/katacoda-scenario/submissions

