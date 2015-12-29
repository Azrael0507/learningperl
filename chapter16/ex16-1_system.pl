#!/usr/bin/perl

chdir '/'
	or die "Can't not chdir to directory: $!";

!system 'ls', '-l'
	or die "Can't not read directory: $!";
