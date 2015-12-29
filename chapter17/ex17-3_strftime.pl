#!/usr/bin/perl
use POSIX qw(strftime);
use 5.010;

foreach(<'*'>){
	my($atime, $mtime) = map{
		strftime('%Y-%m-%d', localtime($_));
	}(stat)[8,9];
	printf "%-20s %10s %10s \n", $_, $atime, $mtime;
}
