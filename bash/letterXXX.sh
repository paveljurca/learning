#!/bin/bash
#April 2012 jurcapavel@sssvt.cz
#letter X printed the funny way

tput setaf 2
let a=3
while [ "$a" -gt "0" ]
do
	for b in $( seq $(echo "$[ 6-$a*2 ]") )
	do
		echo -n " "
	done
	echo -n $(echo "XXX"|grep -Eo "^[X]{$a}")
	for b in $( seq $(echo "$[ $a*2-2 ]") )
	do
		echo -n " "
	done
	echo $(echo "XXX"|grep -Eo "^[X]{$a}")
	let a-=1
	if [ "$a" == "1" ]; then tput setaf 1; fi
done
tput setaf 2
let a=2
until [ "$a" == "4" ]
do
	for b in $( seq $(echo "$[ 6-$a*2 ]") )
	do
		echo -n " "
	done
	echo -n $(echo "XXX"|grep -Eo "^[X]{$a}")
	for b in $( seq $(echo "$[ $a*2-2 ]") )
	do
		echo -n " "
	done
	echo $(echo "XXX"|grep -Eo "^[X]{$a}")
	let a+=1
done
tput sgr0

