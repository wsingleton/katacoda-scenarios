#!/bin/bash
echo "done" >> /tmp/katacoda-finished
rm /root/project -R > /dev/null &
rm /root/target -R > /dev/null &
unzip study-cards.zip
rm -R study-cards.zip > /dev/null &
echo "done" >> /tmp/background-finished