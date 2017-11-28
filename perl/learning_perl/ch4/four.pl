#!/usr/bin/perl
use strict;
my %family_name = (pavel => "jurca", petr => "bauer", vasek => "kuberna");
sub family_name {
	my $surname = $family_name{shift @_};
	if (defined $surname) {return $surname};
	"unknown";
}
print "Please enter a first name: ";
chomp(my $a = <STDIN>);
print &family_name($a),"\n";
