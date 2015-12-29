#!/usr/bin/perl

use 5.010;

print "Please enter your number:";

chomp(my $number = <STDIN>);

$what = '';
given($number){
	when(not $_ % 3){$what .= ' Fizz'; continue}
	when(not $_ % 5){$what .= ' Buzz'; continue}
	when(not $_ % 7){$what .= ' Sausage'}

}

print "$number: $what\n";
