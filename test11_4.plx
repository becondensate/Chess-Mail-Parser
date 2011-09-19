#!/usr/bin/perl
use warnings;
use strict;   

my @array_holder;
my %sharp_notes = (
	1  => "A",
	2  => "A\#",
	3  => "B",
	4  => "C",
	5  => "C\#",
	6  => "D",
	7  => "D\#",
	8  => "E",
	9  => "F",
	10 => "F\#",
	11 => "G",
	12 => "G\#"
);
#, A, 1, 3, 5, 6, 8, 10, 12, 1,
   open(PASSWD, "password.txt");
    while (<PASSWD>) {
    chomp;
    (@array_holder[0..9]) = split(/ /);
    }
	print "thsi is array holder: ", @array_holder;
	my @new_array;
	@new_array = (1, 4, 5, 6);
	
	for (my $z = 2;	$z <= 5; $z += 1)	
	{
	print "\t", $sharp_notes{$array_holder[$z]};
	}
	