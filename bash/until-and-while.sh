#!/bin/bash
let a=1
while [ "$a" -lt "4" ]
do
	tput setaf 4
	echo -n $(echo "BCA"|grep -Eo "[A-Z]{$a}$")
	for b in $( seq $(echo "$[ 6-$a*2 ]") )
	do
		echo -n " "
	done
	tput setaf 1
	echo "BAC"|grep -Eo "^[A-Z]{$a}"
	let a+=1
done
#
let a=3
until [ "$a" == "0" ]
do
	tput setaf 1
	echo -n $(echo "BCA"|grep -Eo "[A-Z]{$a}$")
	for b in $( seq $(echo "$[ 6-$a*2 ]") )
	do
		echo -n " "
	done
	tput setaf 4
	echo "BAC"|grep -Eo "^[A-Z]{$a}"
	let a-=1
done
tput sgr0
exit 0

