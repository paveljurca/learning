#!/usr/bin/perl
use strict;
sub which_element_is {
	my($what, @list) = @_;
	foreach (0..$#list) {
		if ($what eq $list[$_]) {return $_}
	}
	-1
}
my @names = qw< fred barney betty dino wilma pebbles bamm-bamm >;
my $result = &which_element_is("wilma", @names);
print "@names\n";
print "Wilma is at ${result}th index!\n";
