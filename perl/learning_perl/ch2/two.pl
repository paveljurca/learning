#!/usr/bin/perl
@family = qw< pavel jana zdenek martin >;
@row = 1..1e1;
pop @row;shift @row;unshift(@row,777);push(@row,007);
foreach $row (@row) {
	$row .= " -\n";
}
@row=reverse(@row);print @row;
print "$row\n";
foreach (reverse 1..1e1) {
	print "$_\n";
}
$_="am pavel jurca, so remember me!\n";
$row = "The array \@row has " . scalar @row . " elements.";print $row . "\n";
@lines = <STDIN>;
print " @lines";
