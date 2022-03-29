#!/bin/bash
echo "done" >> /tmp/katacoda-finished
sudo apt-get update > /dev/null
echo "Installing Git..."
sudo apt-get install git -y > /dev/null
echo "Git installed."
echo "Installing Java 8 JDK..."
sudo apt-get install openjdk-8-jdk -y > /dev/null
echo "Java 8 JDK installed."
echo "Installing Apache Maven..."
sudo apt-get install maven -y > /dev/null
echo "Maven installed."
echo "Installing Apache Tomcat..."
sudo wget "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.zip" -q -O tomcat.zip > /dev/null
unzip tomcat.zip > /dev/null
mv apache-tomcat-9.0.60/ /usr/local/
rm tomcat.zip
chmod 570 /usr/local/apache-tomcat-9.0.60/ -R
echo "Apache Tomcat installed."
echo "done" >> /tmp/background-finished