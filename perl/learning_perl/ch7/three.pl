#!/usr/bin/perl -w
use strict;
@ARGV = (`perldoc -l perlfunc`);
my %seen;
while (<>) {
	if (/=item\s+([A-Za-z_]\w*)/) {
		$seen{$1}++;
	}
}
foreach (sort keys %seen) {
	if ($seen{$_}>2) {print "$_ / $seen{$_}x\n"}
}
