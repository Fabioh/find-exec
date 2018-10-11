#!/usr/bin/env bash

# variables of the colors
cyan='\033[36;1m'
red='\033[31;1m'
green='\033[32;1m'
end='\033[m'

while [ $1 ]; do
   if which "$1" &> /dev/null; then
      # get the location of the directory to show in the output
      dir=$(which "$1")
	echo -e "${cyan}${1} is installed in the system.${end} ${green}Directory: ${dir}${end}"
   else
      echo -e "${red}${1} is not installed in the system.${end}"
   fi
   shift
done
