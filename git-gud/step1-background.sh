#!/bin/bash

# Download and unpack example project from scenario assets S3 bucket
wget "https://katakoda-scenario-assets.s3.amazonaws.com/study-cards.zip" -O study-cards.zip
unzip study-cards.zip

echo "done" >> /opt/.backgroundfinished
