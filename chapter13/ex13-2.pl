#!/usr/bin/perl

print "which directory?:";

chomp($dir = <STDIN>);

if($dir =~ /\A\s*\z/){
	chdir 
		or die "Can't change to your home directory!\n";
}
else{
	chdir $dir
		or die "Can't change to $dir!\n";
}

@file = <.* *>;

foreach(sort @file){
	print "$_\t";
}
print "\n";
