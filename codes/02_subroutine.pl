#!/usr/bin/env perl

use strict;
use warnings;

sub add {
    my ($left, $right) = @_;
    $left + $right;
}

print add(5, 7);
