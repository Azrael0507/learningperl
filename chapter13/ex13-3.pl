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

opendir $dir_dh, $dir
	or die "Can't read $dir: $!";

foreach(readdir $dir_dh){
	print "$_\t";
}
print "\n";
