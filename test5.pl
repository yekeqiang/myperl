#!/usr/bin/perl
use strict;
use warnings;
my %account = (
      "number" => "31415926",
      "opened" => "3000-01-01",
      "owners" => [
             {
                  "name" => "Philip Fry",
                  "DOB"  => "1974-08-06",
             },
             {
                  "name"  => "Hubert Farnsworth",
                  "DOB"   => "2841-04-09",
             },
      ],
);

my $ownersRef = $account{"owners"};
my @owners = @{ $ownersRef };
my $owner1Ref = $owners[0];
my %owner1 = %{ $owner1Ref };
my $owner2Ref = $owners[1];
my %owner2 = %{ $owner2Ref };
print "Account #",$account{"number"}, "\n";
print "Opened on ", $account{"opened"}, "\n";
print "Joint owners:\n";
print "\t", $owner1{"name"}, "(born ",$owner1{"DOB"},")\n";
print "\t", $owner2{"name"}, "(born ",$owner2{"DOB"},")\n";
print "$ownersRef\n";
print "@owners\n";
print "$owner1Ref\n";
print "$owner2Ref\n";
