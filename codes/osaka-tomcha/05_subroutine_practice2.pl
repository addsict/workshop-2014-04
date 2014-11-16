#!/usr/bin/env perl

use strict;
use warnings;

my @array = ('papix','boolfool','nekohairetsu');
my %hash  = ( iphone5  => 2012,
              iphone5s => 2013,
              iphone6  => 2014,
);

output_array_and_hash(\@array, \%hash);

sub output_array_and_hash {
  my ($array_ref, $hash_ref) = @_;
  for my $item (@$array_ref){
    print $item."\n";
  }
  for my $key (keys(%$hash_ref)){
    print $hash_ref->{$key}."\n";
  }
}
