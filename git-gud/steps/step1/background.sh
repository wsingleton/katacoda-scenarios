#!/bin/bash
echo "done" >> /tmp/katacoda-finished
(
    rm /root/project/ -R
    rm /root/target/ -R
    wget "https://katakoda-scenario-assets.s3.amazonaws.com/study-cards.zip" -q -O /root/study-cards.zip &
    unzip /root/study-cards.zip > /dev/null 2>&1
    rm /root/study-cards.zip
    sleep 3
) 2> /tmp/scenario-error.log
echo "done" >> /tmp/katacoda-background-finished
