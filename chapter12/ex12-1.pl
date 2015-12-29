#!/usr/bin/perl

sub checkfile{
	my $file = shift @_;
	-e $file || return "file not exist.";

	my @attr;

	-r $file && push @attr, "readable";
	-w $file && push @attr, "writable";
	-x $file && push @attr, "excutable";
	@attr || return "file exists";

	'is '. join " and ", @attr;
}


foreach(@ARGV){
	$output = checkfile($_);
	print "$_  $output\n";
}
