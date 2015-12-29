#!/usr/bin/perl

use File::Basename;
use FIle::Spec;

my($source, $dest) = @ARGV;

if(-d $dest){
	my $basename = basename $source;
	$dest = File::Spec->catfile($dest, $basename);
}

link $source, $dest
	or die "Can't rename: $!";
