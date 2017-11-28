#!/bin/bash
echo -n "your typed arguments were: "
for a;do
	echo -n "$a, "
done
echo -e "\n\nmy name is: $0"
echo "return code: $?"
echo "arguments: $#"
seq 1 5 &>/dev/null
echo 'last argument of `seq 1 5 &>/dev/null` was: '$_
echo "pid: $$"
#echo "arguments were (together): $*"
echo -e "arguments were: $@\n"

#moves for one level further in args due to shift command
echo -e "arguments:\n$1"
while shift; do echo $1; done #prints one more empty line in the end

xclock &
echo -e "PID of that clock is $!\n"

if [[ "$1" =~ "pavel" ]]
then
	echo "salam prisol, maslo prislo, chleba prisol -> davaj casy!"
else
	kill $$ -l >/dev/null 2>&1
fi

echo -e "\nMatko, Otce, ja som nebol zabit!"
