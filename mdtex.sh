#!/bin/sh

################################
# -t オプションをつければ，pdfの作成までしてくれる
#
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

