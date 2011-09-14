#!/usr/bin/perl
use warnings;
#use strict;

use Tkx;
my $choicevar;
my $key_entry;
my $meta_note;

#$notes[0] = "foo";
my $key_notes;

#
my $mw = Tkx::widget->new(".");
Tkx::wm_title(".", "Notes in Key");
Tkx::ttk__frame(".c", -padding => "3 3 12 12");
Tkx::grid( ".c", -column => 0, -row => 0, -sticky => "nwes");
Tkx::grid_columnconfigure( ".", 0, -weight => 1);
Tkx::grid_rowconfigure(".", 0, -weight => 1);

Tkx::ttk__entry(".c.key", -width => 7, -textvariable => \$key_entry);
Tkx::grid(".c.key", -column => 1, -row => 2, -sticky => "we");

Tkx::ttk__button(".c.button", -text => "Get Key", -command => sub {Test();}); #{Get_Key();}); #sub in this row
Tkx::grid(".c.button", -column => 2, -row => 2, -sticky => "we");
#Tkx::ttk__label(".c.notes", -textvariable => \$meta_note);
#Tkx::grid(".c.notes", -column => 1, -row => 3, -sticky => "we");


Tkx::grid( Tkx::ttk__label(".c.flbl", -text => "Enter key to find out the notes: "), -column => 1, -row => 1, -sticky => "w");

sub Test {
my $counter = 0;
my @notes;
$notes[0] = "A";
$notes[1] = "B";
$notes[2] = "C#";
$notes[3] = "D";
$notes[4] = "E";
my $a;

$a = $counter + 2;
$meta_note = $notes[$a];
}

print $key_entry;
#
#
#
#
#
foreach (Tkx::SplitList(Tkx::winfo_children(".c"))) { Tkx::grid_configure($_, -padx => 5, -pady => 5); }
Tkx::focus(".c.key");
Tkx::bind(".", "<Return>", sub {&Get_Key();}); #sub in this row
my $choice;
#
#
$choice = Tkx::widget->new(".c.combo");

Tkx::ttk__combobox(".c.combo", -textvariable => \$choicevar);

Tkx::grid(".c.combo", -column => 2, -row => 3, -sticky => "we");
#$choice->g_bind("Major#", sub { script });
$choice ->configure(-values => "Major# Majorb Minor# Minorb");
#
#DO NOT MOVE LINES 63-86!!! If you do you have to change $line_co if number conditionals

# A 1 3 5 6 8 10 12 1
# A# 2 4 6 7 9 11 1 2
# B 3 5 7 8 10 12 2 3
# C 4 6 8 9 11 1 3 4
# C# 5 7 9 10 12 2 4 5
# D 6 8 10 11 1 3 5 6
# D# 7 9 11 12 2 4 6 7
# E 8 10 12 1 3 5 7 8
# F 9 11 1 2 4 6 8 9
# F# 10 12 2 3 5 7 9 10
# G 11 1 3 4 6 8 10 11
# G# 12 2 4 5 7 9 11 12
# A 1 3 5 6 8 10 12 1
# Bb 2 4 6 7 9 11 1 2
# B 3 5 7 8 10 12 2 3
# C 4 6 8 9 11 1 3 4
# Db 5 7 9 10 12 2 4 5
# D 6 8 10 11 1 3 5 6
# Eb 7 9 11 12 2 4 6 7
# E 8 10 12 1 3 5 7 8
# F 9 11 1 2 4 6 8 9
# Gb 10 12 2 3 5 7 9 10
# G 11 1 3 4 6 8 10 11
# Ab 12 2 4 5 7 9 11 12

my %sharp_notes = (
1 => "A",
2 => "A\#",
3 => "B",
4 => "C",
5 => "C\#",
6 => "D",
7 => "D\#",
8 => "E",
9 => "F",
10 => "F\#",
11 => "G",
12 => "G\#"
);

my %flat_notes = (
1 => "A ",
2 => "Bb ",
3 => "B ",
4 => "C ",
5 => "Db ",
6 => "D ",
7 => "Eb ",
8 => "E ",
9 => "F ",
10 => "Gb ",
11 => "G ",
12 => "Ab "
);

#my $key_entry;
#my $sorfentry;

#print "Enter key in question: ", "\n";
#$key_entry = <STDIN>;
#chomp $key_entry;
#print "sharps or flats?", "\n";
#$sorfentry = <STDIN>;
#chomp $sorfentry;

sub Get_Key {

my @string_elements;

my $line_holder;

#print $key_entry;
my @notes;
my @array_holder;
my $line_co;
$line_co = 0;
my $z;
my $boo1 = 0;
my $boo2;
 open(SELF, "Key_FinderAlpha.plex");
    while (<SELF>) {
$line_co = $line_co + 1;
	if ($line_co > 51 && $line_co < 76) {			#zzlinechange
	$line_holder = $_;
		if ($line_holder =~ /(# $key_entry )/){
		$boo1 = $boo1 +1;
			if ($boo1 < 2) {
			(@array_holder[0..9]) = split(/ /);
				for ($z = 2; $z <= 8; $z += 1) {
#if ($choicevar = /Major#/) { ###need to change this to check box option!!!
				push @notes, $sharp_notes{$array_holder[$z]}, "\t";
#push @num_holder, $split_line;
#}
#else {
#print $flat_notes{$array_holder[$z]}, "\t";
#}
#}
}
}
}
}
}
if ($key_entry) {
print "\n", qq(I\tii\tiii\tIV\tV\tvi\tvii\n);
print @notes, "\n";
my $label_row = 5;

#for ($aa = 1; $aa <=6; $aa += 1) {
	Tkx::ttk__label(".c.notes1", -textvariable => \$notes[0]);
	Tkx::grid(".c.notes1", -column => 1, -row => $label_row, );
	
	Tkx::ttk__label(".c.notes2", -textvariable => \$notes[1]);
	Tkx::grid(".c.notes2", -column => 2, -row => $label_row, );
	
	Tkx::ttk__label(".c.notes3", -textvariable => \$notes[2]);
	Tkx::grid(".c.notes3", -column => 3, -row => $label_row, );
	
	Tkx::ttk__label(".c.notes4", -textvariable => \$notes[3]);
	Tkx::grid(".c.notes4", -column => 4, -row => $label_row, );
	
	Tkx::ttk__label(".c.notes5", -textvariable => \$notes[4]);
	Tkx::grid(".c.notes5", -column => 5, -row => $label_row, );
	
	Tkx::ttk__label(".c.notes6", -textvariable => \$notes[5]);
	Tkx::grid(".c.notes6", -column => 6, -row => $label_row, );
	
	Tkx::ttk__label(".c.notes7", -textvariable => \$notes[6]);
	Tkx::grid(".c.notes7", -column => 7, -row => $label_row, );

#Tkx::ttk__label(".c.key_label", -textvariable => \$notes[0]);
#Tkx::grid(".c.notes", -column => 3, -row => 3, -sticky => "we");
#$choice = Tkx::widget->new(".c.combo"); 
}

}

Tkx::MainLoop();

#Look up how to get Tkx label to change with updated value of textvariable.