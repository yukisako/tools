#!/bin/sh

################################
# MarkdownからTeXに変換するシェルスクリプト．パスを通してこれを置いておくとコマンドみたいに使える．
# -t オプションをつければ，pdfの作成までしてくれる
# http://mcg.hateblo.jp/entry/2015/12/12/180830 を参考に
################################
if [ "$1" = '-i' ]
then
  for infile in *.png; do
  convert img/png/$infile img/eps/${infile%.*}.eps ;
  done
fi

if [ "$1" = 'init' ]
then
  cp -a /Users/yukisako/tools/tex-example ./
  mv tex-example $2
  cd $2
fi
