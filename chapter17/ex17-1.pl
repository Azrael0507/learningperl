#!/usr/bin/perl

open $fh, '<', 'sample_test'
	or die "Error read sample_test:$! \n";

chomp(@strings = <$fh>);

while(1){
	print "Please enter your pattern:\n";
	chomp($pattern = <STDIN>);
	
	$pattern =~ /\A\s*\Z/ && last;

	@matches = grep /$pattern/, @strings;

	$count = @matches;
	if($count){
		print "$count lines matched!\n";
		@formation = map "$_\n", @matches;
		print "@formation";
	}
	else{
		print "no line matched!!\n";
	}
}

