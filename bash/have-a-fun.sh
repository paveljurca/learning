#!/bin/bash

#[ $1 ] && stty -echo || stty -echo;tput setaf 0;tput setab 0
# =
test $1
if [ "$1" ] #test "$1" OR [[ $? =~ 0 ]] OR [[ $1 != "" ]] OR $(echo $PIPESTATUS)
then
	echo "true"
	stty -echo #do not print any character
	#exit 0
else
	echo "false"
	stty -echo #do not print any character
	tput setaf 0 #switch tty foreground into black color
	tput setab 0 #switch tty background into black color
	#exit 2
fi
# return co 
test $1
echo $? &>/dev/null
#reset to defaults
	stty echo;tput setaf 0;tput setab 9
