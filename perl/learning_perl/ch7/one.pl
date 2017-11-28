#!/usr/bin/perl -w
use strict;
print "would you like to learn perl?: ";
my $decision = (<STDIN> =~ m#(\byes\b)#i);
if ($decision) {
	#print "$`<$&>$'","\n";
	print "\tyour answer: $1\n";
} else {
	print "\tyour choice :/\n";
}
