#!/bin/bash
#
#for a; do #without [in list] statement it takes simply arguments given on CLI
#	case $a in
#		-G) echo "#1 Google";;
#		*) echo "no Google";;
#	esac
#done
#
until [ "$#" == "0" ]
do
	case $1 in
		-G|--[gG]oogle) echo "#1 Google";;
		-g|--[gG]it[hH]ub) echo "#2 github";;
		-[tT]|--[tT]witter) echo "#3 twitter";;
		-[mM]|--[mM]icrosoft) echo "#4 Microsoft";;
		-[aA]|--[aA]pple) echo "#5 Apple";;
		*) echo "unknown option, sorry";;
	esac
	shift 1
done
#
firm=( 'Google' 'github' 'twitter' 'Microsoft' 'Apple' )
opt=( 'G' 'g' 't' 'm' 'a' )
echo -e "\nWhich company do you HATE?"
#select is just fool case
select inc in ${firm[*]}; do echo "you hate *$inc*, why?";break; done
#
echo -e "\nWhich company do you LOVE?"
for (( a=0; $a-${#firm[*]}; a++ ))
do
	echo " ${opt[$a]}) ${firm[$a]}"
done
echo -n "#> "
read -n1 char;echo
case $char in
	G) echo "numero #1";;
	g) echo "numero #2";;
	t) echo "numero #3";;
	m) echo "numero #4";;
	a) echo "numero #5";;
	?) echo "unknown option";exit 1;;
esac
exit 0
