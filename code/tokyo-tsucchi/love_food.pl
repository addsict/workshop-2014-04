#!/usr/bin/env perl
use strict;
use warnings;

my $words_ref = [
    'papix loves meat!',
    'boolfool loves sushi!',
];

love_food($words_ref);

# papix->meat
# boolfool->sushi
# のように表示
sub love_food {
    my ($words_ref) = @_;
    for my $word ( @{ $words_ref } ) {
        if ( $word =~ /(.+) loves (.+)!/ ) {
            my $name = $1;
            my $food = $2;
            print "$name->$food\n";
        }
    }
}
