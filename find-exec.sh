#!/bin/sh

# variables of the colors
cyan=$(tput bold; tput setaf 6)
red=$(tput bold; tput setaf 1)
green=$(tput bold; tput setaf 2)
end=$(tput sgr0)

while [ $1 ]; do
   if type "$1" > /dev/null; then
      # get the location of the directory to show in the output
      echo "${cyan}${1} is installed in the system.${end}"
      # Directory: ${dir}${end}
   else
      echo "${red}${1} is not installed in the system.${end}"
   fi
   shift
done
