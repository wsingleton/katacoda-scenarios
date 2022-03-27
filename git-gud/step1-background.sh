#!/bin/bash

echo "This is a background script with a long running process"

mkdir test-dir
touch test-dir/HelloWorld.java
echo "public class HelloWorld{public static void main(String[] args){ System.out.println(\"Hello, world!\");}}" >> test-dir/HelloWorld.java

sleep 5

echo "done" >> /opt/.backgroundfinished
