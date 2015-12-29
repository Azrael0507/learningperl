#!/usr/bin/perl

$secret = int(1 + rand 100);

while(1){
	print "Please enter number between 1 and 100:";
	chomp($guess = <STDIN>);

	if($guess =~ /quit|exit|\A\s*\z/i){
		print "you give up.the secret number is $secret.\n";
		last;
	}
	elsif($guess == $secret){
		print "Congratulation! you guess it! the secret number is $secret.\n";
		last;
	}
	elsif($guess < $secret){
		print "Too low!!!\n";
	}
	else{
		print "Too high!!!\n"
	}
}
