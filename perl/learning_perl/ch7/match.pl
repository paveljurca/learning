#!/usr/bin/perl -w
use strict;
if ("Hello there, neighbor" =~ /\s(\w+),/) {
	print "That was ($`)($&)($')\n";
}
my $a = "pavel jurca pavel";
$a =~ s/(\w+)([\d\D]*)/\L\u$1\U$2/g;
print $a,"\n";
