package Foo::Math;

use strict;
use warnings;

use Exporter qw(import);
 
our @EXPORT_OK = qw(add root);

sub add {
  my ($x, $y) = @_;
  return $x+$y;
}

sub root {
  my $x = shift;
  return $x*$x;
}

1;
