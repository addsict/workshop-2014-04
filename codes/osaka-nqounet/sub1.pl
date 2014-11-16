#!/usr/bin/env perl
use utf8;
use 5.012001;

use DDP {deparse => 1};

# 関数の４パターン
# 1. 実行してもらうだけ
# 2. 何かを渡して実行してもらう
# 3. 実行して何かを返してもらう
# 4. 何かを渡して実行して何かを返してもらう

# パターン1
# 「関数1です」と表示する関数
sub func1 { say '関数1です'; }

func1();


# パターン2
# 渡した文字を表示する関数
sub func2 {
    my $str = shift @_;
    say $str;
}

func2('関数2です');


# パターン3
# 「関数3です」と返してくれる関数
sub func3 { return '関数3です'; }

say func3();


# パターン4
# 渡した文字を返してくれる関数
sub func4 {
    my $str = shift @_;
    return $str;
}

say func4('関数4です');
