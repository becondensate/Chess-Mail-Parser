#!/usr/bin/perl
use warnings;
use strict;
my $scorefile;
my $scoreentry;
my $course;

print "Enter file name to open: ";
$scorefile = <STDIN>;	
open IN, "<$scorefile" or die "Can't write on file $scorefile: $!\n";

while (<IN>) {
	print $_;
	}
