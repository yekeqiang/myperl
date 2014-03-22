#!/usr/bin/perl
use strict;
use warnings;

my @array = (
    "print",
    "these",
    "strings",
    "out",
    "for",
    "me"
);

print $array[0];
print $array[1];
print $array[2];
print $array[3];
print $array[4];
print $array[5];
print $array[6];

print "this array has".( @array )."elements\n";
print "The last populated index is".$#array."\n";
print @array;
