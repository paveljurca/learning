#!/usr/bin/perl
#the easiest way to do it
print reverse <STDIN>;
exit 0;
#in case you want to store the input in an array
chomp(@lines = <STDIN>);
foreach (reverse @lines) {
	print "$_\n";
}
exit 0;
