#!/bin/bash
rm /root/project/ -R &
rm /root/target/ -R &
wget "https://katakoda-scenario-assets.s3.amazonaws.com/study-cards.zip" -q -O /root/study-cards.zip &
unzip /root/study-cards.zip > /dev/null 2>&1
rm /root/study-cards.zip &
(wget "https://katakoda-scenario-assets.s3.amazonaws.com/learner-details.sh" -q -O /root/learner-details.sh && chmod 775 /root/learner-details.sh) &
clear