#!/usr/bin/perl

chdir '/'
	or die "Can't not chdir to directory: $!";

exec 'ls', '-l'
	or die "Can't not read directory: $!";
