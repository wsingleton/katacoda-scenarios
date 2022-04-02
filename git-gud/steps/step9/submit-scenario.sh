#!/bin/bash

echo "Submitting scenario..."
curl -X POST -H "Content-Type: application/json" -d @/root/scenario-submission-details.json

