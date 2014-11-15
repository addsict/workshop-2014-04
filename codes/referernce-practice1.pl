#!/usr/bin/env perl
use utf8;
use 5.012001;    # sayを使える

use DDP {deparse => 1};    # pを使える

# 問題
# 1. 「自分の名前 (name)」と「好きな食べ物の配列のリファレンス (favorite_foods)」を持ったハッシュリファレンスを作成しましょう (つまり、好きな食べ物は複数個書いてください)

# 解答例
my $ref = {
    name          => '名前です',
    favorite_foods => ['寿司', '焼き肉', 'ステーキ', 'おでん']
};

p $ref;
