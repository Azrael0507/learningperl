#!/usr/bin/perl

use 5.010;

sub hup_handler{
	state $n;
	say "Caught HUP", ++$n;
}

sub usr1_handler{
	state $n;
	say "Caught USR1", ++$n;
}

sub usr2_handler{
	state $n;
	say "Caught USR2", ++$n;
}

sub int_handler{
	say "Caught INT. Exiting.";
	exit;
}

print "My PID is <$$> \n";

foreach(qw(int hup usr1 usr2)){
	$SIG{uc $_} = "${_}_handler";
}

while(1){
	sleep 1;
}
