#!/usr/bin/perl
use warnings;
#use strict;

use Tkx;
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
my $choice_var;
$choice_var = "Major#";
my $key_entry;
my $meta_note;
my $key_notes;
my $mw = Tkx::widget->new(".");
Tkx::wm_title(".", "Notes in Key");
Tkx::ttk__frame(".c", -padding => "3 3 12 12");
Tkx::grid( ".c", -column => 0, -row => 0, -sticky => "nwes");
Tkx::grid_columnconfigure( ".", 0, -weight => 1);
Tkx::grid_rowconfigure(".", 0, -weight => 1);

Tkx::ttk__entry(".c.key", -width => 7, -textvariable => \$key_entry);
Tkx::grid(".c.key", -column => 1, -row => 2, -sticky => "we");

Tkx::ttk__button(".c.button", -text => "Get Key", -command => sub {Get_Key();}); #{Get_Key();}); #sub in this row
Tkx::grid(".c.button", -column => 2, -row => 2, -sticky => "we");
Tkx::ttk__label(".c.notes", -textvariable => \$meta_note);
Tkx::grid(".c.notes", -column => 1, -row => 4, -sticky => "we");

Tkx::grid( Tkx::ttk__label(".c.enter_key_label", -text => "Enter key to find out the notes: "), -column => 1, -row => 1, -sticky => "w");
#Tkx::grid( Tkx::ttk__label(".c.note_number_label", -text => "I\tii\tiii\tIV\tV\tvi\tvii\"), -column => 1, -row => 3); 
foreach (Tkx::SplitList(Tkx::winfo_children(".c"))) { Tkx::grid_configure($_, -padx => 5, -pady => 5); }
Tkx::focus(".c.key");
Tkx::bind(".", "<Return>", sub {&Get_Key();}); #sub in this row
my $choice = Tkx::widget->new(".c.combo");

Tkx::ttk__combobox(".c.combo", -textvariable => \$choice_var);

Tkx::grid(".c.combo", -column => 2, -row => 4, -sticky => "we");
#$choice->g_bind("Major#", sub { script });
$choice ->configure(-values => "Major# Majorb Minor# Minorb");




sub Get_Key {

my $line_holder;
my @notes;
my @array_holder;
#my $line_co;
#$line_co = 0;
my $z;
my $boo1 = 0;
 open(NOTE_DATA_FH, "Notes_in_Key.plx");
    while (<NOTE_DATA_FH>) {
#$line_co = $line_co + 1;
$line_holder = $_;
    if ($line_holder =~ /(# $key_entry )/){
    $boo1 = $boo1 +1;
        if ($boo1 < 2) {
        (@array_holder[0..9]) = split(/ /);
			for ($z = 2; $z <= 8; $z += 1) {
				if ($choice_var eq "Major#") { 
					push @notes, $sharp_notes{$array_holder[$z]}, "\t";
				}
				elsif ($choice_var eq "Majorb") {
					push @notes, $flat_notes{$array_holder[$z]}, "\t";
					}
                }
            }
        }
    }
if ($key_entry) {
$meta_note =  join(" ", @notes);
    }
}
Tkx::MainLoop();

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
