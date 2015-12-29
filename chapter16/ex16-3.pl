#!/usr/bin/perl

if(`date` =~ /\A(Sat|Sun)/){
	print "Go to play\n";
}
else{
	print "Get to work\n";
}
