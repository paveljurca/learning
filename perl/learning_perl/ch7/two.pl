#!/usr/bin/perl -w
use strict;
my $what = 'fred|barney';
my @input = qw< fredbarneybarney fredfredfred barneyfredfred barneybarneybarney fredfredbarney >;
foreach (@input) {
	if (/(($what){3})/) {
		print "$1\n";
	}
}
