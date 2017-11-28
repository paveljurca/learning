#!/usr/bin/perl
#The Bedrock library booking system
use strict;
my $someone = "barney";
my %books = (fred => 3, wilma => 1, barney => 0, pebbles => undef);
if ($books{$someone}) {
	print "\U$someone\E has at least one book checked out.\n";
}
if (exists $books{$someone}) {
	print "Hey, there's a library card for a \U${someone}\E!\n";
}
#this deletes a user from our database for violation rules :-)
delete $books{pebbles};

foreach my $person (sort keys %books) {
	print "\U$person\E has $books{$person} items.\n";
}

