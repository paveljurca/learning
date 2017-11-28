#!/bin/bash

#right folks
tput sgr 0 1;echo -e "\tbourn-again shell jockeys";tput sgr0
tput setaf 4;grep "/bin/bash$" < /etc/passwd|cut -d":" -f1;tput setaf 9;
#wrong folks
if grep "bin/sh$" < /etc/passwd &>/dev/null; then
	tput sgr 0 1;echo -e "\tbourn shell folks";tput sgr0
	tput setaf 7;grep "/bin/sh$" < /etc/passwd|cut -d":" -f1;tput setaf 9
fi

