#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

my $ref = {
  name => 'tomcha',
  fav  => [
    'sushi',
    'ramen',
    'kinugasadon'
  ]
}; 

print $ref->{'fav'}->[2];

%hash = (a => 1, b => 2);
$hash{'a'};
