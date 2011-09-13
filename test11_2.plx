#!/usr/bin/perl
use warnings;
use strict;

my $readline_holder;
my $line_container;
my $line_match;
my $line_co;
my $boo1;
my $a;
my $match_holder;
my $line_counter;
$line_counter = 0;
my $self_test11_2;
my $char_holder;

$self_test11_2 = "test11_2.plx";

#, A, 1, 3, 5, 6, 8, 10, 12, 1, 
my $A_ref;

my @array_holder;

print "Enter text: \n";
$a = <STDIN>;
chomp $a;


#if ($readline_holder =~ /($a*)/) {
#	$line_container = $readline_holder;
#		print "Found it!\n";
#		$boo1 = 1;
#		print "This is one: ", $1, "\n";
#		$match_holder = $1;
#		}
		
open IN, "<$self_test11_2" or die "Couldn't open file $self_test11_2: $!";
my $new_line_holder;
while (<IN>) {
	$line_counter = $line_counter +1;
	$new_line_holder = $_;
	if ($new_line_holder =~ /(#, $a, )/) {
		while ($new_line_holder) {
	$" = ", ";
	print $_;
		print "this is new line holder: ", $new_line_holder;
		print "Works!\n";
		print "This is one: ", $1;
		$new_line_holder = undef;
		}
		#while ($new_line_holder) {

			#$" = " ";
			#$char_holder = $_;
			#if ($char_holder =~ (/\d/) {
			#push @array_holder, $char_holder;
			#}
		}
	}
	print @array_holder;

	
	
		