#!/usr/bin/perl
chomp($radius=<STDIN>);
if ($radius < 0) {
	$radius=0;
}
print $radius * (2*3.141592654);
print "\n";
