#!/bin/bash

echo "TODO: step setup implementation"
rm /root/project/ -R
rm /root/target/ -R 
unzip study-cards.zip >> /dev/null &
rm study-cards.zip
echo "done" >> /tmp/load-step-complete
