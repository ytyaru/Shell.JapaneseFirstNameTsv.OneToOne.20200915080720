[en](./README.md)

# Shell.JapaneseFirstNameTsv.OneToOne.20200915080720

　日本人の名前（名字でなく）の読みと表記を網羅したTSVファイルを作成する。性別ごとに分類した読みと表記が1対1のTSV。

# 成果物

ファイル|行数|「読み」|「表記」
--------|----|--------|--------
[m.tsv][]||男のみ|男のみ
[f.tsv][]||女のみ|女のみ
[c.tsv][]||男女共通|男女共通
[mc.tsv][]||男のみ|男女共通
[fc.tsv][]||女のみ|男女共通
[cm.tsv][]||男女共通|男のみ
[cf.tsv][]||男女共通|女のみ

[m.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/m.tsv
[f.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/f.tsv
[c.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/02_common/c.tsv
[mc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/mc.tsv
[fc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/fc.tsv
[cm.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/cm.tsv
[cf.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/cf.tsv

# 特徴

* 名前は必ずいずれかのファイルに一箇所のみ存在する

# 開発環境

* <time datetime="2020-09-15T08:07:12+0900">2020-09-15</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# インストール

```sh
git clone https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720
```

# 使い方

```sh
cd Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/src
./00_src/read_only.sh
./01_uniq/uniq.sh
./02_common/common.sh
./02_common/uniq.sh
./03_yku/yku.sh
```

# 注意

* 実行に時間がかかる: `3時間37分17秒`
    * [21秒](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/blob/master/src/01_uniq/note.md
    * [9分20秒](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/blob/master/src/02_common/note.md)
    * [207分36秒]https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/blob/master/src/03_yku/note.md)

# 著者

　ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# ライセンス

　このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

