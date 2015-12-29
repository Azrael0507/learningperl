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

$favorite = 42;

given($ARGV[0]){
	when(! /\A\d+\z/){print "Not a number!\n";}

	@divisors = divisors($_);

	when(@divisors ~~ 2){
		print "$_ is even\n";
		continue;
	}

	when(!(@divisors ~~ 2)){
		print "$_ is odd\n";
		continue;
	}

	when(@divisors ~~ $favorite){
		print "$_ is divisible by my favorite number\n";
		continue;
	}

	when($favorite){
		print "$_ is my favorite number!\n";
		continue;
	}

	when(@divisors ~~ []){print "$_ is a prime";}
	default{print "$_ is divisible by @divisors\n";}
}
