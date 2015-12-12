#!/bin/sh

################################
# MarkdownからTeXに変換するシェルスクリプト．パスを通してこれを置いておくとコマンドみたいに使える．
# -t オプションをつければ，pdfの作成までしてくれる
# http://mcg.hateblo.jp/entry/2015/12/12/180830 を参考に
################################

echo "マークダウンで書いたものをLaTeXに変換するツール"
read -p "please input your file: " file

mdfile="${file}.md"
texfile="${file}.tex"

echo "${mdfile}を${texfile}に変換します"

pandoc $mdfile -o $texfile


echo $texfile

ruby /Users/yukisako/tools/tex.rb $texfile

echo $1

if [ "$1" = '-t' ]
then
  platex master.tex

  dvipdfmx master.dvi
fi

