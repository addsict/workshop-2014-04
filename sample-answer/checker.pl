use strict;
use warnings;

# 引数として文字列を受け取り, その文字列に`perl`ないし`Perl`が含まれるなら｢Perl Monger!｣と表示するサブルーチン`perl_checker`を書いてみましょう.

my $string1 = 'papix perl hogehoge';
my $string2 = 'papix peri hogehoge';

perl_checker($string1);

sub perl_checker {
    my $str = shift;
    if ($str =~ /[Pp]erl/) {
        print "Perl Monger!\n"; 
    }
}
