#!/usr/bin/perl

foreach(@ARGV){
	unlink $_
		or warn "Can't unlink $_: $!...\n";
}
