#!/bin/bash
#echo "##########"
#cat $0
#echo -e "##########\n"
group="/etc/group"
user="/etc/passwd"
#10 last groups
echo -e "GID\tNAME"
echo -e "---\t----"
for a in $( tail -n10 $group )
do
	echo -e "`echo $a|cut -d':' -f3`\t`echo $a|cut -d':' -f1`"
done
#sorted users
tput bold;echo -e "\nalphabetically sorted users"
tput sgr0 #sets default values
for b in $( (cat $user|grep -Eo "^[^:]*")|sort  )
do
	echo -n "$b "
done
echo
