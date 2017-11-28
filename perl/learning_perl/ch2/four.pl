#!/usr/bin/perl
@names = qw< fred betty barney dino wilma pebbles bamm-bamm >;
unshift(@names, undef);
chomp(@numbers = <STDIN>);
print "\n";
foreach $number (@numbers) {
	if (defined($names[$number])) {
		print "\$names[$number] is $names[$number].\n";
	} else {
		print "\$names[$number] does not exists!\n";
	}
}	
