#!/usr/bin/perl -w
use strict;
my @arr = split ' ', "  ahoj \t   ja           \t    jsem pavel  ";
my $result = join "#", @arr;
print "$result\n";
