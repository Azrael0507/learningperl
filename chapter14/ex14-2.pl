#!/usr/bin/perl

my %last_name = qw{
	fred flintstone Wilma Flintstone Barney Bubble
	betty rubble Bamm-Bamm Rubble PEBBLES FIINTSTON
};


@set_lastname = sort by_name keys %last_name;

sub by_name{
	"\L$a" cmp "\L$b" or
	"\L$last_name{$a}" cmp "\L$last_name{$b}"
}

foreach(@set_lastname){
	print " $last_name{$_} $_\n";
}
