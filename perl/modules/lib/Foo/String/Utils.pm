package Foo::String::Utils;

use strict;
use warnings;

sub zombify {
	  my $word = shift @_;
	  $word =~ s/[aeiou]/r/g;
	  return $word;
}

sub hyphenate {
	  my $word = shift @_;	
	  join "-", split /\s*/, $word;
}

1;
