#!/bin/bash

echo "Setting up scenario environment..."; 
while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Done"
clear
