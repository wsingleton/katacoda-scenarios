#!/bin/bash
sudo apt-get update > /dev/null
sudo apt-get install git -y > /dev/null
sudo apt-get install openjdk-8-jdk -y > /dev/null
sudo apt-get install maven -y > /dev/null
sudo wget "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.zip" -q -O tomcat.zip > /dev/null
unzip tomcat.zip > /dev/null
mv apache-tomcat-9.0.60/ /usr/local/
rm tomcat.zip
printf "\nexport PATH=\"/usr/local/apache-tomcat-9.0.60/bin:$PATH\"" >> .bashrc
chmod 570 /usr/local/apache-tomcat-9.0.60/ -R
source .bashrc
echo "done" >> /tmp/background-finished