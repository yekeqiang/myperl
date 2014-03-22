#!/usr/bin/perl
use strict;
use List::MoreUtils qw(uniq);
#use Data::Dumper;
open(FD,"1.txt")||die("Can not open the file!$!n");

my $line;
while($line=<FD>){
	chomp;

    my @log=split(/####/,$line);
    $log[3] =~ s/ *$//;
    if ($log[3] eq '' ) {
        print "insert into 2car_query ( date,ip,mode,querytime) values ( \'$log[0]\',\'$log[1]\',\'$log[2]\',\'$log[4]\');\n";
    }else {
        my @operation=split(/\&/,$log[3]);
        @operation= uniq @operation;
   
        my %hash;
        foreach (@operation) { 
    	   chomp;
    	   my @tmp = split (/\=/,$_);

    	   $hash{$tmp[0]} = $tmp[1];


    	}
    	while (my ($key, $value) = each(%hash)) {
    	  
    	   	print "$key => $value\n";
    	   	push @key,$key;
            push @value,$value;
    	}
    	foreach (@key) {
            if (s/year/year1/) {
            last;
        }
        my $key_new= join ",",@key;
        my $value_new = join '\',\'',@value;
        print "insert into 2car_query ( date,ip,mode,querytime,$key) values ( \'$log[0]\',\'$log[1]\',\'$log[2]\',\'$log[4]\',\'$value\');\n"
    }
}