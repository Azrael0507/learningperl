#!/usr/bin/perl
use 5.010;
$ENV{TEST};
my $longest;

foreach(keys %ENV){
	$longest = length($_) if length($_) > $longest;
}

foreach(sort keys %ENV){
	printf "%-${longest}s = %s\n", $_, $ENV{$_} // "(undefined)";
}
