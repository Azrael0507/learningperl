#!/usr/bin/perl
use 5.010001;
$secret = int(1 + rand 100);


GUESSLOOP:{
	print "Please enter your number:";
	chomp(my $guess = <STDIN>);
	given($guess){
		when(! /\A\d+\z/){print "not a number!\n"; redo GUESSLOOP}
		when($_ < $secret){print "too low\n"; redo GUESSLOOP}
		when($_ > $secret){print "too high\n"; redo GUESSLOOP}
		default {print "you guess it :$secret!\n"}
	}

}
