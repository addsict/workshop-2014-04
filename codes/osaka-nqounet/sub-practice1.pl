#!/usr/bin/env perl
use utf8;
use 5.012001;

use DDP {deparse => 1};

sub add {
    my ($left, $right) = @_;
    return $left + $right;
};
sub min {
    my ($left, $right) = @_;
    return $left - $right;
};
sub mul {
    my ($left, $right) = @_;
    return $left * $right;
};
sub div {
    my ($left, $right) = @_;
    return $left / $right;
};

print add(10, 5) , "\n";
print min(10, 5) , "\n";
print mul(10, 5) , "\n";
print div(10, 5) , "\n";