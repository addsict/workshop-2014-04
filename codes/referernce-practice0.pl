#!/usr/bin/env perl
use utf8;
use 5.012001;    # sayを使える

use DDP {deparse => 1};    # pを使える

# 問題
# 0. 「自分の名前 (name)」と「好きな食べ物(favorite_food)」を持ったハッシュリファレンスを作成しましょう

# 解答例
my $ref = {
    name          => '名前です',
    favorite_food => '好きな食べ物は「寿司」です'
};

p $ref;
