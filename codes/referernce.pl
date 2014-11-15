#!/usr/bin/env perl
use utf8;
use 5.012001;# sayを使える

use DDP {deparse => 1};# pを使える

my @array = (1, 2, 3);
my %hash = (
    a => 1,
    b => 2
);
my @refs = (\@array, \%hash);

say $refs[0]->[1];# @arrayの2つ目の値（2）が表示される
say $refs[1]->{a};# %hashのaの値（1）が表示される

# これら（↑）は次のように書けます

@refs = (
    [1, 2, 3],
    {
        a => 1,
        b => 2
    }
);

say $refs[0]->[1];
say $refs[1]->{a};

p @refs;# 綺麗に表示
