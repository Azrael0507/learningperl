#!/usr/bin/perl

while(<>){
	chomp;
	if(/YOUR_PATTERN_GOES_HERE/){
		print "Matched: |$`<$&>$'|\n";
	}
	else{
		print "NO match: |$_|\n";
	}
}
