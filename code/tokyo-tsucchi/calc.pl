use strict;
use warnings;

sub add {
    my ($left, $right) = @_;
    return $left + $right;
}

sub min {
    my ($left, $right) = @_;
    return $left - $right;
}

sub mul {
    my ($left, $right) = @_;
    return $left * $right;
}

sub div {
    my ($left, $right) = @_;
    return $left / $right;
}


# 出力例2
print "add: " . add(1, 2) ."\n"; #=>3
print "min: " . min(5, 1) ."\n"; #=>4
print "mul: " . mul(5, 2) ."\n"; #=>10
print "div: " . div(5, 2) ."\n"; #=>2.5
