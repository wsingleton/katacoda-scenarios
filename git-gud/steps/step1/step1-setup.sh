#!/bin/bash

echo "TODO: step setup implementation"
rm /root/project/ -R
rm /root/target/ -R 
unzip study-cards.zip >> /dev/null &
rm study-cards.zip
wget -q -O https://katakoda-scenario-assets.s3.amazonaws.com/scenario-submission-details.json
