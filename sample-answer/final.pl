use strict;
use warnings;

# while (chomp($input = <STDIN>)) {
#     ...
# }
#
# 上記のコードは, 標準入力から入力された文字列を, ひたすら $input に代入するコードである.
# このコードの ... の部分を, 次の条件を満たすように書き換えてみよう.
#
# 文字列が'0'の場合, ループを抜ける(lastを使って...).
# 文字列が'perl'ないし'Perl'を含む場合, ｢Find Perl!｣と表示する.
# 文字列に大文字小文字問わず, 'python'の文字列が含まれる場合, ｢Find Python!｣と表示する.
# 文字列に'perl'ないし'ruby'ないし'python'が含まれる場合, ｢Love Programming!｣と表示する. 
# 文字列の先頭に'papix'がある場合, ｢Find papix!｣と表示する.
# 文字列に'Hello'が含まれる場合, その後に続く単語'xxxx'を使って｢Hello! xxxx!｣と表示する.
#     例えば, 文字列に｢Hello moznion｣が含まれる場合, ｢Hello! moznion!｣と表示すればOKです.

while (chomp(my $input = <STDIN>)) {
    # 文字列が0の場合, ループを抜ける(lastを使って...).
    if ($input eq '0') {
        last;
    } 
    # 文字列がperlないしPerlを含む場合, ｢Find Perl!｣と表示する.
    if ($input =~ /[Pp]erl/) {
        print "Find Perl!\n";
    }

    # 文字列に大文字小文字問わず, pythonの文字列が含まれる場合, ｢Find Python!｣と表示する.
    if ($input =~ /python/i) {
        print "Find Python!\n";
    }
    
    # 文字列にperlないしrubyないしpythonが含まれる場合, ｢Love Programming!｣と表示する.
    if ($input =~ /perl|ruby|python/) {
        print "Love Programming!\n";
    }

    # 文字列の先頭にpapixがある場合, ｢Find papix!｣と表示する.
    if ($input =~ /^papix/) {
        print "find papix!\n";
    }

    # 文字列にHelloが含まれる場合, その後に続く単語xxxxを使って｢Hello! xxxx!｣と表示する.
    if ($input =~ /Hello\s+(.+)/) {
        print "Hello! $1!\n";
    }
}
