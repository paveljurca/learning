#!/usr/bin/perl
#on separate lines
	#print sort <STDIN>, "\n";
#on one line
chomp(@lines = <STDIN>);
print "\xA";
	#spaces
		@sorted = sort @lines;
		print "@sorted";
	#no-spaces
		print " VS ", sort @lines;
		print "\n";
