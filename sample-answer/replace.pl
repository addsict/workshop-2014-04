use strict;
use warnings;

my $str = 'moznion loves ruby';

# この`$str`に格納された文字列を, 置換を利用して, ｢moznion loves perl｣に書き換えるようなコードを書いてみましょう.

$str =~ s/ruby/perl/;
print $str;
