#!/usr/bin/perl -w
use strict;
while (<>) {
	chomp;
	if (/(\b\w+\b)\s+(\1\s+)+/) {
		print "$`<$&>$'\xA";
	} else {
		print "no match\n";
	}
}
