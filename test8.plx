#!/usr/bin/perl
use warnings;
use strict;

my $file1;
$file1 = "c:/begperl/list2.txt"
open FILE, "<$file1" or die $!;

while (<FILE1>) {
	print $_;
	}