#!/usr/bin/perl
use 5.010;

sub divisors{
	my $number = shift;

	my @divisors;

	foreach (2 .. ($number/2)){
		($number % $_) || push @divisors, $_;
	}

	@divisors;
}


print "your number is <$ARGV[0]>\n";

given($ARGV[0]){
	when(! /\A\d+\z/){print "Not a number!\n";}

	@divisors = divisors($_);

	when(@divisors ~~ []){print "$_ is a prime";}
	default{print "$_ is divisible by @divisors\n";}
}
