#!/usr/bin/perl
use warnings;
use strict;

#, A, 1, 3, 5, 6, 8, 10, 12, 1,
my $self_test11_3split; 
$self_test11_3split = "test11_3split.plx";
my $split_line;
print "Enter text: \n";
$a = <STDIN>;
chomp $a;
my @num_holder;
#open IN, "<$self_test11_3split" or die "Couldn't open file $self_test11_3split: $!";
my $new_line_holder;
$new_line_holder  ="#, A, 1, 3, 5, 6, 8, 10, 12, 1,";
#print join('', split(/( ,)/, $new_line_holder)), "\n";
$split_line =  join('', split(/ ,/,   $new_line_holder)), "\n";
  push @num_holder, $split_line;
  print $num_holder[3];