#!/usr/bin/perl
use 5.010;

print "Please enter your dir:";
chomp($dir = <STDIN>);

opendir DIRDH, $dir
	or die "Error open $dir: $!\n";

for(readdir DIRDH){
	print "processing: $_\n";

	when(! -e){print "\tFile not exist!\n"}
	when(-r _){print "\tFIle is readable\n"; continue}
	when(-w _){print "\tFIle is writable\n"; continue}
	when(-x _){print "\tFIle is executable\n"}
}
