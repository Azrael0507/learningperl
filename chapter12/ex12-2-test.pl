#!/usr/bin/perl

@ARGV || print "no file name.\n";

$oldest_file = shift @ARGV;
$oldest_time = -M $oldest_file;

foreach(@ARGV){
	my $age = -M;
	($age < $ $oldest_time) && (($oldest_file, $oldest_time) = ($_, $age));
}

print "the oldest file is: $oldest_file, time is: $oldest_time days.\n";
