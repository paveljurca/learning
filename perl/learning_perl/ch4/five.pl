#!/usr/bin/perl
use strict;
sub total_words {
	my (%count, @result);
	foreach my $key (@_) {
		chomp $key;
		if ($key ne '') { $count{"\L$key\E"}++ }
	}
	foreach my $word (sort keys %count) {
		push(@result, "'\U$word\E' was seen $count{$word}x.\n");
	}
	@result;
}
print &total_words(<STDIN>);
