#!/bin/bash
rm /root/project -R > /dev/null &
rm /root/target -R > /dev/null &
unzip study-cards.zip > /dev/null &
rm -R study-cards.zip > /dev/null &
echo "done" >> /tmp/background-finished