#!/usr/bin/env perl

use strict;
use warnings;

my $words_ref = [
    'papix loves meat!',
    'boolfool loves sushi!',
];

my $words = "papix loves meat!";

sub love_food{
  my $ref = shift;
  for my $str (@$ref){
    if ($str =~ /(.+) loves (.+)/){
      print "$1 -> $2\n";
    }else{
      print $str."はマッチしませんでした";
    };
  }
}

love_food($words_ref);
