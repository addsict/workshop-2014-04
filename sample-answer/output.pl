use strict;
use warnings;

# 配列とハッシュをそれぞれ1つずつ定義してから, 第1引数に配列のリファレンス, 第2引数にハッシュのリファレンスを受け取り, その中身を出力する(for文などを利用して...), `output_array_and_hash`というサブルーチンを書いてみよう.

sub output_array_and_hash {
    my ($array_ref, $hash_ref) = @_; 

    print "Array: " . join(', ', @{$array_ref}) . "\n";
    print "Hash:\n";
    for my $key (keys %{$hash_ref}) {
        print "\t$key => " . $hash_ref->{$key} . "\n";
    }
}

my @array = qw/ foo bar baz /;
my %hash  = (
    foo  => 'bar',
    hoge => 'fuga',
);

output_array_and_hash(\@array, \%hash);

