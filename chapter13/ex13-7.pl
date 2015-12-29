#!/usr/bin/perl

use File::Basename;
use FIle::Spec;

$symcheck = $ARGV[0] eq '-s';
$symcheck && shift @ARGV;

my($source, $dest) = @ARGV;

if(-d $dest){
	my $basename = basename $source;
	$dest = File::Spec->catfile($dest, $basename);
}

if($symcheck){
	symlink $source, $dest
		or die "Error: $!\n"
}
else{
	link $source, $dest
		or die "Can't rename: $!";
}
