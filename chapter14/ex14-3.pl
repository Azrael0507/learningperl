#!/usr/bin/perl

print "Please enter your string:";
chomp($string = <STDIN>);

print "Please enter your substr";
chomp($substr = <STDIN>);


for($pos = -1; ;){
	$pos = index($string, $substr, $pos+1);
	($pos == -1) && last;
	push @places, $pos;

}

print "Places: @places";
