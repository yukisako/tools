#!/bin/sh

################################
# MarkdownからTeXに変換するシェルスクリプト．パスを通してこれを置いておくとコマンドみたいに使える．
# -t オプションをつければ，pdfの作成までしてくれる
# http://mcg.hateblo.jp/entry/2015/12/12/180830 を参考に
################################

echo "マークダウンで書いたものをLaTeXに変換するツール"


cd ./md
for infile in *.md; do
  echo "${infile}を${infile%.*}.texに変更します"
  pandoc $infile -o ../tex/${infile%.*}.tex ;
  ruby /Users/yukisako/tools/tex.rb ../tex/${infile%.*}.tex
done

cd ..


echo $1

if [ "$1" = '-t' ]
then
  platex master.tex
  dvipdfmx master.dvi
  open -a Preview master.pdf

fi

