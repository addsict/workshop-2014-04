#!/usr/bin/env perl
use strict;
use warnings;

sub perl_checker {
    my ($str) = @_;
    #if ( $str =~ /perl/ || $str =~ /Perl/ ) {
    if ( $str =~ /[pP]erl/ ) {
        print "Perl Monger!\n";
    }
}

perl_checker('Perl最高！');
perl_checker('# perl hoge.pl');
perl_checker('Ruby入学式');
