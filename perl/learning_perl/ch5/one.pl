#!/usr/bin/perl
use strict;
#while (defined(my $line = <STDIN>)) {
#	print "I saw $line";
#}
while (<STDIN>) { chomp; print "I saw $_, here.\n"; }
