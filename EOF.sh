# EOF
# ヒアドキュメント
# 複数行に指定したコマンドの効果を与える。

# サンプル                                                                                                                                                  
# ターミナルにline1~line3を表示する
cat <<EOF
line1
line2
line3
EOF

# サンプル
# test.txtファイルにline1~line3を書き込む
cat <<EOF > test.txt
line1
line2
line3
EOF

# インデントについて
# インデントは基本できない。
# EOSをインデントしてしまうとヒアドキュメントの終わりとして認識できない。
# ヒアドキュメントの内容にインデントがそのまま反映されてしまいます。
# インデントするには、<<を<<-に書き換える。
# <<-でヒアドキュメントを書くと、行頭のタブを無視してくれる。
# ただし、空白だけは無視してくれない。

# サンプル
cat <<-EOF > test2.txt
        line1
    line2
        line3
EOF

# 変数の非展開について
# EOFをクォートします。

# サンプル
HOGE=hogehoge
cat <<'EOF' > test3.txt
line1
lne2
line3
$HOGE
EOF