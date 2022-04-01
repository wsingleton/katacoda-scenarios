#!/bin/bash

echo -n "Configuring scenario"
local -r pid="${1}"
local -r delay='0.75'
local spinstr='\|/-'
local temp
while true; do 
  sudo grep -i "done" /tmp/load-step-complete &> /dev/null
  if [[ "$?" -ne 0 ]]; then     
    temp="${spinstr#?}"
    printf " [%c]  " "${spinstr}"
    spinstr=${temp}${spinstr%"${temp}"}
    sleep "${delay}";
    printf "\b\b\b\b\b\b"
  else
    break
  fi
done
printf "    \b\b\b\b"
echo ""
echo "Scenario configured"
rm /tmp/load-step-complete
clear
