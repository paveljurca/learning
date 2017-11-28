#!/bin/bash

#if not exist var $GOOGLE return "no googol" otherwise return $GOOGLE var
echo "Google: ${GOOGLE:-"no googol"}"
#basically the same; if $GOOGLE does not exist set $GOOGLE to "no googol"
echo "Google: ${GOOGLE:="no googol"}"
#offset $BASH var #/bin/bash
echo ${BASH:5} #returns 'bash'
echo ${BASH:7:2}|tr [:lower:] [:upper:] #returns 'SH'
#return all variables with prefix JAVA
echo ${!JAVA*}
#pavel is 5 characters long
pavel='pavel';echo "pavel is ${#pavel} characters long, no doubts :-}"
#offset 'damn' word from this string: "damn Google"
str="damn Google";echo ${str#"damn"}
#offset everything from the end starting with 'plex' or 'Plex'
str="c'mon GooglePlexi plex";echo ${str%%[pP]*}
#substitute all occurrences of 'Private' for 'Public'
str="General Private License is private";echo ${str//[pP]rivate/Public}
#bit-shift #64 32 16 8 4 2 1 #return 32 8 4
echo "$((16<<1)) $((16>>1)) $((16>>2))"
