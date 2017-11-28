#!/usr/bin/perl
use strict;
my @items = qw< wilma dino pebbles >;
my $format = "The items are: \n" . ("%15s\n" x @items);
printf $format, @items;
printf "The items are: \n".("%15s\n" x @items), @items;
