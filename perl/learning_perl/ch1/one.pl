#!/usr/bin/perl
#print "\x41\n" x 7;
print "your name: ";
$input = <STDIN>;
$decision = "\L$input" eq "pavel\n";
if ($decision) {
	print "you are $input";
} else {
	if (! defined($input)) {
		exit 1;
	} #here means end-of-file
	if ($input ne "\n") {
		print "you are not pavel!\n";
	} else {
		print "type a valid name please\n";
	}
}
print "\n";
$count=1;
while ($count < 10) {
	print "$count ";$count+=2;
}
print "\n";
