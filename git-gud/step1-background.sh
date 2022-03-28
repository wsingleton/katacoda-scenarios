#!/bin/bash

rm /root/project -R
rm /root/target -R

echo "done" >> /root/katacoda-finished

unzip study-cards.zip
rm -R study-cards.zip

echo "done" >> /root/katacoda-background-finished
