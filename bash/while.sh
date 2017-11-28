#!/bin/bash

let x=0

while [ "$x" -lt "8" ]
do
	tput setaf $x;echo "color number $x"
	colors[$x]="color nummero $x"
	let x+=1
done
tput sgr0;echo -e "\n${#colors[*]} colors in total."
echo -ne "\n"

let b=1
for a in $( seq 47 )
do
	if [[ $b > 8 ]]; then b=1;tput sgr0; fi
	tput setaf $b
	let b+=1
	echo -n "$a "
done
echo 
tput setaf 9
exit 0
