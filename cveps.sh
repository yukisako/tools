#!/bin/sh

################################
# MarkdownからTeXに変換するシェルスクリプト．パスを通してこれを置いておくとコマンドみたいに使える．
# -t オプションをつければ，pdfの作成までしてくれる
# http://mcg.hateblo.jp/entry/2015/12/12/180830 を参考に
################################

for infile in *.png; do
convert img/png/$infile img/eps/${infile%.*}.eps ;
done


