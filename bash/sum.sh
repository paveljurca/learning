#!/bin/bash
#4 possible solutions for sum 2 numbers
([ -z $1 ] || [ -z $2 ]) && echo "you must sum 2 numbers!" && exit 2
tput setaf 2;echo -n '$(( $1 + $2 ))'
tput setaf 0;echo " = $(( $1 + $2 ))"
#
tput setaf 1;echo -n '$[ $1 + $2 ]'
tput setaf 0;echo " = $[ $1 + $2 ]"
#
tput setaf 4;echo -n 'let result="$1 + $2"'
tput setaf 0;let result="$1 + $2";echo " = $result"
#
tput setaf 5;echo -n 'expr $1 + $2'
tput setaf 0;echo " = `expr $1 + $2`"
#multiplication;using 'expr' you have to escape or use '*'
echo -e "\nmultiplication:"
tput setaf 5;echo -n 'expr $1 \* $2'
tput setaf 0;echo " = `expr $1 \* $2`"
