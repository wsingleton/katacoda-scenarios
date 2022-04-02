#!/bin/bash

echo "TODO: step setup implementation"
rm /root/project/ -R
rm /root/target/ -R 
wget "https://katakoda-scenario-assets.s3.amazonaws.com/study-cards.zip" -q -O study-cards.zip
unzip study-cards.zip >> /dev/null
rm study-cards.zip
wget "https://katakoda-scenario-assets.s3.amazonaws.com/who-dis.sh" -q -O who-dis.sh
chmod 775 who-dis.sh    
bash who-dis.sh
clear
