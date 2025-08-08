# IAB_sotsuron_tex
LaTeX（ラテフ）は、数式や論文などを美しく整えるための文章作成システムです。Wordのようにマウスで操作するのではなく、コードを書いて文章を作るのが特徴です。IABの卒業論文フォーマットをLaTeXで作成しました。LaTeXを用いることで、目次の自動生成や参考文献の挿入、ハイパーリンクの設定などが容易に行えます。

# はじめに
まずはlatexを使える環境を整備します。

1. VS codeのインストール(必須ではないですが、見やすいのでおすすめです)
2. LaTeX Workshop 拡張機能を入れる
 - VS Codeを開く
 - 左の拡張機能マーク（四角い積み木）をクリック
 - 「LaTeX Workshop」で検索、インストールする
3. [IAB_sotsuron_tex](https://github.com/Akane-ogawa/IAB_sotsuron_tex)をローカルにgit cloneする(git cloneの実行は、任意のディレクトリに移動してから行ってください)

```bash
# IAB_sotsuron_texを置きたいディレクトリに移動
cd your_directory

# git cloneの実行し、IAB_sotsuron_texを置く
git clone git@github.com:Akane-ogawa/IAB_sotsuron_tex.git
```
詳しい記述の方法(図の参照・リンクの挿入など)はIAB_sotsuron_texに入っている.texファイルを参考にしてください。

# 参考文献リストの作成
参考文献リストはref.bibというファイルに記述します。.bibファイルで参考文献を挿入する際に、挿入の順序は問わない(ref.bibに記載されている順序に関わらず文章中で参照された順に番号が自動で付与される)ため、文献リストを他の文章にも移植しやすくとても便利です。
- [google scholar](https://scholar.google.co.jp/schhp?hl=ja&as_sdt=0,5)で挿入したい文献を検索
- "引用"をクリック
- BibTeXをクリック
- コピーした情報(下はその一例)をref.bibに貼り付ける

```latex
@article{yugi2014reconstruction,
  title={Reconstruction of insulin signal flow from phosphoproteome and metabolome data},
  author={Yugi, Katsuyuki and Kubota, Hiroyuki and Toyoshima, Yu and Noguchi, Rei and Kawata, Kentaro and Komori, Yasunori and Uda, Shinsuke and Kunida, Katsuyuki and Tomizawa, Yoko and Funato, Yosuke and others},
  journal={Cell reports},
  volume={8},
  number={4},
  pages={1171--1183},
  year={2014},
  publisher={Elsevier}
}
```


# LaTexファイルをpdfにコンパイルする
記述したtexファイルをpdfとしてコンパイルするには以下をターミナルで実行します。この時、IAB_sotsuron_texディレクトリにいることを確認してから実行してください。

```bash
xelatex main.tex 
xelatex main.tex 
```

参考文献ファイル(ref.bib)を反映させたい時は以下をターミナルで実行します。
```bash
xelatex main.tex 
bibtex main
xelatex main.tex 
xelatex main.tex
```
すると、main.pdfという名前のpdfファイルがディレクトリ内に生成されるはずです。

# シンボルフォントの入力
アルファ、ベータ、マイクロなど科学論文で頻出するsymbolフォントのギリシャ文字は、texファイルでは特別な方法で入力する必要があります。これらはtexファイル上で見ると、以下に示したようにただの記号に見えますが、コンパイルされたpdfを確認するとシンボルフォントとして出現します。(01_intro.tex内にもその方法を記載してあります)

```latex
% α
$\alpha$
% β
$\beta$
% μL
$\mu$L
% 2 x 10^5/mL
2 x $10^5$/mL
% CO2
CO$_2$
```
