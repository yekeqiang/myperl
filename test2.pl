#!/usr/bin/perl
use strict;

open(FILE,"2.txt")||die("can't open this file $!");

my $line;
while($line=<FILE>){
	chomp;
	my @log=split(/,/,$line);
	print @log;
	#my %hash;
	foreach(@log){
		chomp;
		print $_;

	}
	
} 