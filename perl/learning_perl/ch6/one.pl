#!/usr/bin/perl -w
use strict;
while (<>) {
	chomp;
	#if (/(W|w)ilma.*(F|f)red|(F|f)red.*(W|w)ilma/) {print "$`<$&>$'\n"}
	if (/(F|f)red/ && /(W|w)ilma/) {print "$`<$&>$'\n"}
}

