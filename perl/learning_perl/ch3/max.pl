#!/usr/bin/perl
use strict; #Enforce some good programming rules
#sub max {
#	@arr = @_;
#	for ($a=0;$a<$#_;$a++) {
#		if ($arr[1]>=$arr[0]) {
#			shift @arr;
#		} else {
#			$arr[1] = $arr[0];
#			shift @arr;
#		}
#	}
#	$arr[0];
#}
sub max {
	my($max) = shift @_;
	foreach (@_) {
		if ($_ > $max) {$max = $_}
	}
	$max;
}
chomp(my @nums = <STDIN>);
print "---   the biggest num is: " . &max(@nums) . "   ---\n";

