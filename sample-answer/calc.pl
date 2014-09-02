use strict;
use warnings;

# 2つの引数の和を計算する`add`と同様に, 2つの引数の差を計算する`min`, 積を計算する`mul`, 商を計算する`div`というサブルーチンを作ってみよう.
# これらのサブルーチンが正しく実装できているか(与えた2つの引数に対して, 適切な値を返すか)を確認するコードを書いてみよう.

sub min {
    my ($left, $right) = @_;
    return $left - $right;
}
sub mul {
    my ($left, $right) = @_;
    return $left * $right;
}
sub div {
    my ($left, $right) = @_;
    return $left / $right;
}

if(min(3, 2) == 3 - 2) {
    print "min = ok\n";
} else {
    print "min = ng\n";
}

if(mul(3, 2) == 3 * 2) {
    print "mul = ok\n";
} else {
    print "mul = ng\n";
}

if(div(3, 2) == 3 / 2) {
    print "div = ok\n";
} else {
    print "div = ng\n";
}
