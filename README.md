[ja](./README.ja.md)

# Shell.JapaneseFirstNameTsv.OneToOne.20200915080720

Create a TSV file that covers the reading and notation of Japanese names (not surnames). TSV with a one-to-one reading and notation classified by gender.

# Deliverables

File|lines|"Reading"|"Notation"
----|-----|---------|----------
[m.tsv][]||male only|male only
[f.tsv][]||female only|female only
[c.tsv][]||male and female|male and female
[mc.tsv][]||male only|male and female
[fc.tsv][]||female only|male and female
[cm.tsv][]||male and female|male only
[cf.tsv][]||male and female|female only

[m.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/m.tsv
[f.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/f.tsv
[c.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/02_common/c.tsv
[mc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/mc.tsv
[fc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/fc.tsv
[cm.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/cm.tsv
[cf.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/master/src/03_yku/cf.tsv

# Feature

* The name always exists in only one place in any file

# Requirement

* <time datetime="2020-09-15T08:07:12+0900">2020-09-15</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# Installation

```sh
git clone https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720
```

# Usage

```sh
cd Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/src
./00_src/read_only.sh
./01_uniq/uniq.sh
./02_common/common.sh
./02_common/uniq.sh
./03_yku/yku.sh
```

# Note

* It takes a long time to execute: `3h37m17s`
    * [21s](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/blob/master/src/01_uniq/note.md)
    * [9m20s](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/blob/master/src/02_common/note.md)
    * [207m36s]https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/blob/master/src/03_yku/note.md)

# Author

ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

