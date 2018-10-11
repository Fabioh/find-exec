#!/usr/bin/env bash

cyan='\033[36;1m'
red='\033[31;1m'
end='\033[m'

while [ $1 ]; do
   if type "$1" &> /dev/null; then
      echo -e "${cyan}${1} is installed in the system.${end}"
   else
      echo -e "${red}${1} is not installed in the system.${end}"
   fi
   shift
done
