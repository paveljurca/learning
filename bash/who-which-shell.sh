#!/bin/bash
cd "/tmp"
tput setab 9;tput setaf 9
rm -f ./.bourn.users;rm -f ./.bournA.users
rows=`cat /etc/passwd|wc -l`
for a in `seq $rows` #or can use #grep ".*" </etc/passwd|while read all
do	
	row=`head -n$a /etc/passwd|tail -n1`
	if $( echo $row|grep "/bin/sh$" &>/dev/null )
	then
		echo $row|grep "/bin/sh$"|cut -d":" -f1 >> ./.bourn.users	
	else
		echo $row|grep "/bin/bash$"|cut -d":" -f1 >> ./.bournA.users
	fi
done

#right people
[ -e ./.bournA.users ] && (tput sgr 0 1;echo -e "\tbourn-again shell jockeys"; \
	tput sgr0;tput setaf 4;cat ./.bournA.users;tput setaf 9)
#wrong people
[ -e ./.bourn.users ] && (tput sgr 0 1;echo -e "\tagain shell folks"; \
	tput sgr0;tput setaf 7;cat ./.bourn.users;tput setaf 9)

#remove temp files
rm -f ./.bourn.users;rm -f ./.bournA.users

exit 0
