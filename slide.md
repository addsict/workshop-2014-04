# Perl 入学式 #4

## 今日の内容
- リファレンスの復習
- サブルーチン
- 正規表現

## リファレンスの復習
[こちら](https://github.com/perl-entrance-org/workshop-2013-03/blob/master/practice.md) の`score.pl`を題材にして, 復習していきます

- 練習問題の1, 2, 4を今回は解説して, 残りの問題については解答を掲載しておきます

## score.pl
[score.pl](https://github.com/perl-entrance-org/workshop-2013-03/blob/master/score.pl)

- 必要な変数や値を定義してあります

## ハッシュリファレンス
    my $papix = {
        name        => 'papix',
        affiliation => 'namba.pm',
        perl        => 60,
        python      => 50,
        ruby        => 50,
        php         => 80,
        binary      => 30,
    };

- ハッシュリファレンスを定義するには, `{}` を使用する
- 配列のリファレンスであれば, `[]` を使用する

## 練習問題 1
それぞれの人物のperl、ruby、python ... といった分野毎の合計値をそれぞれのリファレンスに追加しましょう

- `for` 文を利用します
    - `@people_ref = ($papix, $boolfool, ...)`
    - `@languages = qw/perl ruby .../`

## 練習問題 2
言語毎の平均を求めましょう.  
出力は `Data::Dumper` を使ってください

## 練習問題 2
    my $average = {
      perl => ...
      ruby => ...
    };

- リファレンスを用意して, それぞれの言語を key とし, value に平均値を代入していくとよいでしょう

## Data::Dumper
    use Data::Dumper; # => モジュールの使用
    my $hoge = {
      fuga => foofoo,
    };
    print Dumper $hoge;
    __DATA__
    $VAR1 = {
          'fuga' => 'foofoo'
    };

## 練習問題 3
    my $highscore = {
        hachioji.pm => [],
        ...
    }

- `$highscore` と言ったハッシュリファレンスを用意し、所属毎に`perl`のスコアが60以上の人物の名前を push して下さい

# サブルーチン (関数)

## sub
- コードを意味のある仕組みにするための方法
- `perl` における関数 は `sub` を使う

## 関数の定義
    sub 文字列 {
    
    }

- 関数名に数字のみや`?/!`を用いることはできない

## e.g.
    sub puts {
        my $word = shift;
        print "$word\n";
    }
    puts("Hello");

このように文字列を受け取って, 出力する関数`puts`を考える.  
とりあえずこれを書いて, 動作させてみましょう

## 引数
      my $word = shift;

- 関数内で引数は`@_`という無名配列に格納されている
- `shift @_` は `shift` と等価であるので, `shift` と書くことが多い
    - `shift` は配列の先頭を取り出す操作

## 関数 add
    sub add {
      my ($left, $right) = @_;
      return $left + $right;
    }

- 複数の引数を受け取る場合は, `my (...)` とすることでリストとして扱える
- 関数内の演算結果を呼び出し元に戻すには, `return` を使う
  - ただし, `return` がなくても, 関数内で最後に評価したものが自動的に返るようになっている

## 関数の呼び出し
    my $result = add(1, 2);
    print $result; # => 3

- 関数を呼び出すには, `関数名()` とする
    - 引数はコンマ区切りで指定する

## 練習問題
  'add' と同様に, 'minus', 'mul', 'div' といった関数を作成しよう

## 配列やハッシュを引数にする
    my @array = (1 .. 4);
    my %hash = (
        hoge => 1,
        foo  => 1,
    );
    hoge(@array, %hash);

    sub hoge {
        use Data::Dumper; print Dumper @_;
    }

## 結果
    $VAR1 = 1;
    $VAR2 = 2;
    $VAR3 = 3;
    $VAR4 = 4;
    $VAR5 = 'foo';
    $VAR6 = 1;
    $VAR7 = 'hoge';
    $VAR8 = 1;

引数が`@_`にまとめられてしまうんで, 思うように変数を扱えない

## ここでリファレンスですよ!!

## 配列やハッシュを引数にする
    my $array = [1 .. 4];
    my $hash = {
        hoge => 1,
        foo  => 1,
    };
    hoge($array, $hash);
    sub hoge {
        use Data::Dumper; print Dumper @_;
    }

## 結果
    $VAR1 = [
              1,
              2,
              3,
              4
            ];
    $VAR2 = {
              'foo' => 1,
              'hoge' => 1
            };

## リファレンスの注意
    hoge($array, $hash);
    print $hash->{hoge}; # => 1000

    sub hoge {
        my ($array, $hash) = @_;
        $hash->{hoge} = 1000;
    }

- 関数で値を書き換えると元々の方も書き換えられる

## 練習問題
