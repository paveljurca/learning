#!/usr/bin/perl
use strict;
sub total {
	chomp(my @nums = @_);
	my $sum = 0;
	foreach (@nums) {
		$sum +=$_;
	}
	return $sum;
}
print "The total of the numbers from 1 to 1000 is ", &total(1..1000), "\n";
