use strict;
use warnings;

my @words = (
    'papix loves meat!',
    'moznion loves sushi!',
);

# 上記のような配列のリファレンスを受け取り, リファレンスに格納された文字列について, ｢loves｣の後に記述されている好きな食べ物の単語を正規表現で取得し, ｢papix -> meat｣, ｢moznion -> sushi｣のように表示するサブルーチン, `love_food`を書いてみよう.

love_food(\@words);

sub love_food {
    my $array_ref = shift;

    for my $str (@{$array_ref}) {
        if ($str =~ /(.+) loves (.+)!/) {
            print "$1 -> $2\n"; 
        }
    }
}
