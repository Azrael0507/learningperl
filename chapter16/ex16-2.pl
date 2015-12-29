#!/usr/bin/perl

open STDOUT, '>', 'ls.out'
	or die "can't write to ls.out: $!\n";

open STDERR, '>', 'ls.err'
	or die "cat't write to ls.err $!\n ";


chdir '/'
	or die "Can't not chdir to directory: $!";

exec 'ls', '-l'
	or die "Can't not read directory: $!";
