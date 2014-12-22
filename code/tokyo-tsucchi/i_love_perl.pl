#!/usr/bin/env perl

my $str = 'I love ruby';
# 置換を利用して I love perl に置き換える
$str =~ s/ruby/perl/;
print "$str\n"; # => I love perl

