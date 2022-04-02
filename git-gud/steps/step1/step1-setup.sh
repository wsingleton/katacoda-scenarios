#!/bin/bash

echo "TODO: step setup implementation"
rm /root/project/ -R
rm /root/target/ -R 
wget "https://katakoda-scenario-assets.s3.amazonaws.com/study-cards.zip" -q -O study-cards.zip
unzip study-cards.zip >> /dev/null
rm study-cards.zip
wget "https://katakoda-scenario-assets.s3.amazonaws.com/scenario-submission-details.json" -q -O scenario-submission-details.json
clear