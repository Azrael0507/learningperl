#!/usr/bin/perl
use 5.010001;
$secret = int(1 + rand 100);

print "Please enter your guess:";

while(<STDIN>){
	chomp($_);
	given($_){
		when(! /\A\d+\z/){print "not a number!\n"}
		when($_ < $secret){print "too low\n"}
		when($_ > $secret){print "too high\n"}
		default {print "you guess it :$secret!\n"; last}
	}
	print "Please enter your guess:";
}
