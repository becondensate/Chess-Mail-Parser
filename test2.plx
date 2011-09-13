#!/usr/bin/perl
use warnings;
use strict;

my $j;

for ($j = 0; $j <=$#ARGV; $j++) {
	if ($ARGV[$j] =~ /.txt/) {
		print "Matches!\n";
	} else {
		}
}