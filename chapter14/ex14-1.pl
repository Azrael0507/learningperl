#!/usr/bin/perl
print "please enter your number:\n";
@numbers = <STDIN>;

foreach(sort {$a <=> $b} @numbers){
	printf" %20g\n", $_;
}
