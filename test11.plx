#!/usr/bin/perl
use warnings;
use strict;

my @A = (1, 3, 5, 6, 8, 10, 12, 1);
#my @A# = (2, 4, 6, 7, 9, 11, 1, 2);
my @B = (3, 5, 7, 8, 10, 12, 2, 3);
my @C = (4, 6, 8, 9, 11, 1, 3, 4);
#my @C# = (5, 7, 9, 10, 12, 2, 4, 5);
my @D = (6, 8, 10, 11, 1, 3, 5, 6);
#my @D# = (7, 9, 11, 12, 2, 4, 6, 7);
my @E= (8, 10, 12, 1, 3, 5, 7, 8);
my @F = (9, 11, 1, 2, 4, 6, 8, 9);
#my @F#= (10, 12, 2, 3, 5, 7, 9, 10);
my @G = (11, 1, 3, 4, 6, 8, 10, 11);
#my @G# = (12, 2, 4, 5, 7, 9, 11, 12);

my $a;



my $self;
$self = "test11.plx";
open IN, "<$self" or die "Couldn't open file $self: $!\n";
my $line_co;
my $boo1;


$line_co = 0;
while (<IN>) {

	my $readline_holder;
	my $line_container;
	my $line_match;
	
	#print $line_co, "\n";
	$line_co = $line_co +1;
	$readline_holder = $_;
		
	if ($readline_holder =~ /^$a/) {
		$line_container = $readline_holder;
		$line_match = $line_co;
		print "Found it!\n";
		$boo1 = 1;
		print "This is one: ", $1, "\n";
		}
		
		
				
		#if ($line_container =~ /my @\w*/) {
		#	print "Match!\n";
		#	}
					
	}



	
	
	
	
	