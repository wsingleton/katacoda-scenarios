#!/bin/bash
set +o verbose
rm /root/project/ -R
rm /root/target/ -R 
wget "https://katakoda-scenario-assets.s3.amazonaws.com/study-cards.zip" -q -O /root/study-cards.zip
unzip /root/study-cards.zip > /dev/null 2>&1
rm /root/study-cards.zip
wget "https://katakoda-scenario-assets.s3.amazonaws.com/who-dis.sh" -q -O /root/who-dis.sh
chmod 775 /root/who-dis.sh
clear