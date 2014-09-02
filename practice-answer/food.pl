#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my $data = q{
papix : sushi
moznion : soba
boolfool : sushi
macopy : sushi
};

my %ranking;

my @lines = split "\n", $data;
for my $line (@lines) {
    if ($line =~ /(\w+)\s:\s(\w+)/) {
        $ranking{$2}++;
    }
}

print Dumper \%ranking;

__DATA__
$VAR1 = {
          'soba' => 1,
          'sushi' => 3
        };
