#!/usr/bin/perl
use strict;
print "Gimme a list of strings:\n";
chomp(my @input = <STDIN>);
my $b = 25;if ($input[0]+1-1 != 0) {$b=$input[0]+1-1;shift @input;}
printf "%${b}s\n" x @input, @input;
#printf "%*s\n", $width, $_;
