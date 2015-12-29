#!/usr/bin/perl

print "Looking for file!!!\n";

@ARGV || print "No file name!!!\n";

foreach(@ARGV){
	(-o -r -w $_) && print "this file: $_ is readable and writable!\n";
}
