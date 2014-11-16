#!/usr/bin/env perl
use utf8;
use 5.012001;

use DDP {deparse => 1};

sub output_array_and_hash {
    my ($array_ref, $hash_ref) = @_;

    # 配列を処理
    for my $value (@$array_ref) {
        say $value;
    }

    # ハッシュを処理
    for my $key (keys %$hash_ref) {
        say qq{$key = $hash_ref->{$key}};
    }

    # おまけ
    p $array_ref;
    p $hash_ref;
}

my @array = (1, 2, 3);
my %hash = (
    a => 1,
    b => 2
);
output_array_and_hash(\@array, \%hash);
