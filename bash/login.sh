#!/bin/bash
#passwords stored in MD5 hash
cd "$PWD" #just for fun
#
echo  "Sign Up!"
echo -n "login: "
read -a user #store value in user[*] array
echo -n "pass: "
stty -echo #read -s user #also possible
read -a user
#echo "${user[0]}:$(echo ${user[1]}|md5sum|awk '/[[:alnum:]]/ { print $1 }')" >> users.db
echo "${user[0]}:$(echo ${user[1]}|md5sum|cut -d " " -f 1)" >> users.db 2>/dev/null
stty echo
echo -ne "\n\tpress any key to continue..."
read -n 1 -t 2 #wait for 2 seconds for a single character
echo "your new account was appended into users.db file"
