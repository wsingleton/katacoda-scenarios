#!/bin/bash
echo "done" >> /tmp/katacoda-finished
apt-get -qq update > /dev/null

echo "Installing Git..."
apt-get -qq install git -y > /dev/null
echo "Git installed."

echo "Installing Java 8 JDK..."
apt-get -qq install openjdk-8-jdk -y > /dev/null
echo "Java 8 JDK installed."

echo "Installing Apache Maven..."
apt-get -qq install maven -y > /dev/null
echo "Maven installed."

echo "Installing Apache Tomcat..."
wget "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.zip" -q -O tomcat.zip > /dev/null
unzip tomcat.zip > /dev/null
mv apache-tomcat-9.0.60/ /usr/local/
rm tomcat.zip
chmod 570 /usr/local/apache-tomcat-9.0.60/ -R
echo "Apache Tomcat installed."

sleep 2
echo "done" >> /tmp/background-finished