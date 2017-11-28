use strict;
use warnings;
use 5.010.1;

###
say 'jeste neni 3/4' unless `date +%M` > 40;

###
my $p = $ARGV[0] // -1;
say "You have ", $p<=0 ? "no" : $p<24 ? "some" : "tons of", " eggs, dude!";

###
my $i = 0;
do {
	printf("%2d: %d\n", $i++, $i);
} until ($i > 9);

###
say q('B' char: ), grep {chr($_ ) eq "B"} 1..128;

###
my @arr = (qw/ james bond /, chr(48) x 2 . 7);
$" = qq(\n);
print "@arr[1,0,1,2]", "\xA";

###
say map ++$_, @{[ 1, 2, 3, 4 ]};

my @words = "dobry vecer ve spolek vposledy" =~ m/(v[^\s]*)/g;
#say join " # ", @words;
