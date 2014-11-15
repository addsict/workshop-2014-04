#!/usr/bin/env perl
use utf8;
use 5.012001;

use DDP {deparse => 1};

sub perl_checker {
    my $str = shift;
    if ($str =~ /[pP]erl/) {
        say 'マッチ！';
    }
}

perl_checker('pppPerllll');
perl_checker('pppperllll');
