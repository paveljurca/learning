#!/usr/bin/perl
sub marine {
	$count +=1;
	#print "Hello, sailor number $count!\n";
}
print "Hello, sailor number " . &marine ." !\n";
print "Hello, sailor number " . &marine ." !\n";
print "Hello, sailor number " . &marine ." !\n";
$a = 10;
$b = 5;
sub return_list {
	($b..$a,"\n",reverse $b..$a);
}
print &return_list,"\n";
