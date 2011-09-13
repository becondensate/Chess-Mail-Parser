#!/usr/bin/perl
use warnings;
use strict;

my $std_in;

print "Enter STDIN";
if (<STDIN>) {
$std_in = <STDIN>;
chomp $std_in;
print $std_in;
	if ($std_in eq "quit") {
	print "See ya later!", "\n";
	die;
	}
	elsif ($std_in eq "subs") {
	print "Enter 'average' to return average of scores", "\n";
	print "Enter 'entry' to enter scores into file", "\n";
	}
	elsif ($std_in eq "entry") {
	
}
}