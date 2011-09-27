#!\usr\bin\perl
use warnings;
use strict;

my $string;
my $file;
my $file2;
my @moves;
my $i;
my $j;
my $regex1 = '^(\d)\.O-OO';
my $regex2 = '^(\d\d).O-OO';
my $regex3 = '^O-OO$';

print "Enter file to parse: ", "\n";
$file = <STDIN>;
chomp $file;

print "Enter file to save to: ", "\n";
$file2 = <STDIN>;
chomp $file2;

open(FILE, $file) or die "Couldn't open file: $file $!", "\n";
while (<FILE>) {
	@moves = split(/ /, $_);
	}

for ($i = 1; $i <= $#moves; $i += 3) {
	$moves[$i] = "";
	}
	
for ($j = 0; $j <= $#moves; $j += 1) {  #Changes Queen side castle for white before move 10
	if ($moves[$j] =~ /$regex1/){
		$moves[$j] = $1 . '.O-O-O';
		print $1;
		}
	}

for ($j = 0; $j <= $#moves; $j += 1) {   #Changes Queen side castle for white after move 10
	if ($moves[$j] =~ /$regex2/){
		$moves[$j] = $1 . '.O-O-O';
		print $1;
		}
	}
	
for ($j = 0; $j <= $#moves; $j += 1) {   #Changes Queen side castle for black
	if ($moves[$j] =~ /$regex3/){
		$moves[$j] = 'O-O-O';
		}
	}
	
open OUT, ">$file2";
print OUT join(" ", @moves);
