マークダウン記法で書いたものをTeXに変換するシェルスクリプト．
http://mcg.hateblo.jp/entry/2015/12/12/180830 に使用方法がまとめてある．

toolsディレクトリをホームに作ってパスを通してあげるとコマンドみたいに使える．
.zshrcにalias設定をしてあげると楽．



またこのreadme.txtは整理したい．

作者 サイト
http://yukisako.github.io


.
├── README.txt
├── img
│   ├── eps
│   │   └── test.eps
│   └── png
│       └── test.png
├── master.aux
├── master.dvi
├── master.log
├── master.pdf
├── master.tex
├── md
│   └── test.md
├── sty
│   └── robo.sty
└── tex
    └── test.tex

このようなディレクトリ構成にするとスムーズです．

このディレクトリ構成にして，cveps.shを実行すれば，img/pngの中の画像が全部img/epsの中に置き換えられる．
