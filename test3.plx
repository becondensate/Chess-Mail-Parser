#!/usr/bin/perl
use warnings;
use strict;

my $std_in;
print "Enter \'quit\' to quit", "\n";

$std_in = <STDIN>;
if ($std_in) {
						chomp $std_in;
							print $std_in;
	if ($std_in eq "quit") {
	print "\n", "See ya later!", "\n";
	die;
	}
}