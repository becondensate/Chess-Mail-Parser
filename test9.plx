#!/usr/bin/perl

open FH,"<c:/begperl/list1.plx";

read_text(*FH);

sub read_text
{
        local *FH = shift;
        my @lines;
        @lines = <FH>;
        print @lines;
}