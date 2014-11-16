#!/usr/bin/env perl

use strict;
use warnings;

my $str = 'I love ruby';
my $str2 = ($str =~ s/ruby/perl/);
print $str."\n";
print $str2."\n";
