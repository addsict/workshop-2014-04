#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

sub calc {
    my ($left, $right) = @_;

    if ($left =~ /^\d+$/ && $right =~ /^\d+/) {
        my %result = (
            add => $left + $right,
            sub => $left - $right,
            mul => $left * $right,
            div => $left / $right,
            mod => $left % $right
        );
        return %result;
    } else {
        return undef;
    }
}

my %hash = calc(100, 50);
print Dumper \%hash;

__DATA__
$VAR1 = {
          'div' => '2',
          'add' => 150,
          'sub' => 50,
          'mul' => 5000,
          'mod' => 0
        };

:-)
