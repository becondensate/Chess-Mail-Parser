#!\usr\bin\perl
use warnings;
use strict;

my $string;
my $file;
my $file2;
my @moves;
my $i;
my $j;
my $regex1 = '\d\.O-OO';

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
for ($j = 0; $j <= $#moves; $j += 1) {
if ($moves[$j] =~ /$regex1/) {
$moves[$j] = "changed";
print $moves[$j];
}
}

open OUT, ">>$file2";
print OUT join(" ", @moves);

