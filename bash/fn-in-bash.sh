#!/bin/bash
#function showing a name of a computer and its uptime
function comp_info()
{
	bold=`tput bold`
	uline=`tput sgr 0 1`
	echo -n "${uline}${bold}$HOSTNAME:$(echo -n $uline;tput setaf 1)"
	echo " `uptime`";tput sgr0
}
comp_info
df -h
#include letterXXX.sh script and run it!
. letterXXX.sh 2>/dev/null # ==> source letterXXX.sh 2>/dev/null #do the same
exit $?
