#!/bin/bash
#must have super-user rights to get this stuff working!
for a in $( seq 9 )
do
	echo -e "\n\n\t\t\tSystem is going down for a maintenance! Back up within 2 hours. Root.\n\n" > /dev/tty$a
done
