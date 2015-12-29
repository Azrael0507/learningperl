#!/usr/bin/perl

use 5.010;

foreach(<'*'>){
	my($atime, $mtime) = map{
		my($year, $mon, $day) = (localtime($_))[5,4,3];
		$year += 1900; $mon += 1;
		sprintf "%4d-%02d-%02d", $year, $mon, $day;
	}(stat)[8,9];
	printf "%-20s %10s %10s \n", $_, $atime, $mtime;
}
