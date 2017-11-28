#!/bin/bash

#equal constructions for treating un/given args
if [ ${#1} -eq 0 ]; then
	echo "c'mon, give me some arg(s)!";exit 1
else
	echo "you've typed some arg(s)!"
fi
# =
[ -n "$1" ] && echo "you've typed some arg(s)!"
# =
! [ -z "$1" ] && echo "you've typed some arg(s)!"
# =
[ -z "$1" ] || echo "you've typed some arg(s)!"
# =
if [[ "${#1}" > "0" ]]; then echo "you've typed some arg(s)!"; fi
