#!/usr/bin/perl
print @ARGV;
while (<>) { chomp; print "It was $_ that I saw!\n"; } 
