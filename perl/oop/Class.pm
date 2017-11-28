package Class;

use strict;
use warnings;
use 5.010_001;

sub new {
    my $class = shift;

    return bless {options => [ ]}, $class;
}

sub hi {
    say 'hi';
}

1;
