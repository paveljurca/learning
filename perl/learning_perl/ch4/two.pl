#!/usr/bin/perl
use strict;
my %last_name = (
	fred => "flintstone",
	dino => undef,
	barney => "rubble",
	betty => "slate",
);
my @k = keys %last_name;
my @v = values %last_name;
print "The total of elements in the hash is " . scalar(keys %last_name) . ".\n";
$last_name{pavel} = "jurca";
while ( (my $key,my $value) = each %last_name ) {
	print "$key => $value\n";
}
foreach my $key (sort keys %last_name) {
	print "$key => $last_name{$key}\n";
}
foreach my $value (sort values %last_name) {
	my %rev = reverse %last_name;
	print "$value => $rev{$value}\n";
}
