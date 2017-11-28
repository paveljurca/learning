#!/usr/bin/perl
$numbers[0] = 1;
$numbers[1] = 2;
$numbers[2] = 3;
$numbers[3] = 4;
$numbers[4] = 5;
$numbers[5] = 6;
$numbers[6] = 7;
$numbers[7] = 8;
$numbers[8] = 9;
$numbers[9] = 10;
print $numbers[0];
shift @numbers;
print $numbers[0];
exit 0;
$#numbers = 6;
print "the last element is '$numbers[-1]' which is actually $#{numbers}th position.\n";
qw( pavel jana martin zdenek );
