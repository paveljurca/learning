#!/bin/bash
#rename htm extension to html extension
#example: ./ext.sh htm html #rename htm extension to html extension
echo
ls *.$1|sed "s/.$1$//"|while read file
do
	echo -e "$file.$1 -->  $file.$2"
	mv "$file.$1" "$file.$2" &>/dev/null
done
echo
