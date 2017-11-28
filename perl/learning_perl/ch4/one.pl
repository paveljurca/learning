#!/usr/bin/perl
use strict;
my %family_name;
$family_name{"barney"} = "flintstone";
$family_name{"fred"} = "rubble";
foreach my $person (qw< barney fred >) {
	print "I've heard of $person $family_name{$person}.\n";
}
