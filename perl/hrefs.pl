#!/usr/bin/perl -w
use strict;
@ARGV = ();
push @ARGV, "/mnt/data/personal/hrefs";
my (%site,$k,$v);
while (<>) {&build($_)}
&output;
sub build {
	chomp($_ = pop @_);
	if (/\.[a-z]+.*\s'/i && m#(^.+\S)\s+'(.+$)#) {
		($k,$v) = ($1,$2);
		$site{$k} = $v;
		return 0;
	}
	1;
}
sub output {
	#<html> output
	print "Content-type: text/html\n\n";
	print <<STOP;
	<!DOCTYPE html>
		<html>
			<head>
				<meta charset='utf-8'>
				<title>maden from 'useful-sites'</title>
				<style>
					body{font: normal lighter 1.5em serif;margin: 25px 0;}
					a,span{display: inline-block;width: 49%;text-decoration: none;color: black;text-align: right;}
					a:hover{color: dodgerblue}
					.b{width: 2%;text-align: center;color: orange;}
					.c{color: grey;text-align: left;}
				</style>
			</head>
			<body>
STOP
	foreach my $key (sort keys %site) {
		my $a = "\t\t\t\t<a href=\"http://%s\">%s</a><span class='b'>&nbsp|&nbsp</span><span class='c'>%s</span><br />\n";
		printf $a, $key, $key, $site{$key};
	}
	print <<STOP;
			</body>
		</html>\n
STOP
}