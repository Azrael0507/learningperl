#!/usr/bin/perl

foreach(glob('.* *')){
	my $dest = readlink $_;
	$dest && print "$_ -> $dest\n";
}
