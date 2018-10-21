#!/bin/sh

# variables of the colors
cyan_bold=$(tput bold; tput setaf 6)
cyan=$(tput setaf 6)
red_bold=$(tput bold; tput setaf 1)
red=$(tput setaf 1)
end=$(tput sgr0)

while [ $1 ]; do
   if type "$1" >/dev/null 1>/dev/null 2>/dev/null; then
      # get the location of the directory to show in the output
      echo "${cyan_bold}${1}${end} ${cyan}is installed in the system.${end}"
      # Directory: ${dir}${end}
   else
      echo "${red_bold}${1}${end} ${red}is not installed in the system.${end}"
   fi
   shift
done
