#!/bin/bash

show_progress()
{
  echo -n "Starting scenario"
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  while true; do 
    sudo grep -i "done" /root/katacoda-finished &> /dev/null
    if [[ "$?" -ne 0 ]]; then     
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Scenario started"
  echo -n "Configuring scenario"
  while true; do 
    sudo grep -i "done" /root/katacoda-background-finished &> /dev/null
    if [[ "$?" -ne 0 ]]; then     
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Scenario configured"
}

show_progress

# Attribution: https://github.com/katacoda/scenario-examples/tree/master/displaying-progress-spinner/assets
