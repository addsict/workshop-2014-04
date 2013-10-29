# Perl入学式 \#4 復習問題

## 1. calc.pl
2つの数値を引数として, `add`, `sub`, `mul`, `div`, `mod` といった key に演算結果を代入し, そのハッシュリファレンスを返り値とするような関数 `calc` を作成してください.

## 2. calc.pl
上記で作成した関数における引数が数字であるかどうか正規表現を使って判定するように改良してください.  
数値以外が引数であった場合は `undef` を返すようにしてください.

## 3. food.pl
    my $data = q{
    papix : sushi
    moznion : soba
    boolfool : sushi
    macopy : sushi
    };

[food.pl](https://github.com/perl-entrance-org/workshop-2013-04/blob/master/food.pl) では, 上記のように, `$data` に人物名と好きな食べ物を `(スペース):(スペース)` 区切りで与えています.  
この変数から食べ物が何回出現したかカウントして表示させてください.

- はじめに `$data` を改行ごとに `split` するとよいでしょう
- 分割後, 正規表現により必要な文字列を抽出してください

