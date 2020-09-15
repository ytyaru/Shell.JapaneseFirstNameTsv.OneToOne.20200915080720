# 男女間における共通行を抽出する

ファイル|行数|内容
--------|----|----
`c.tsv`|4518|`男女共に「読み」と「表記」が共通する行のみ抽出されたデータを格納する。
`m.tsv`|98920|`01_uniq/m.tsv`から`c.tsv`を削除したデータを格納する。
`f.tsv`|95831|``01_uniq/f.tsv`から`c.tsv`を削除したデータを格納する。

```sh
$ time ./common.sh 

real	9m20.199s
user	9m17.821s
sys	0m1.466s
```
```sh
$ time ./uniq.sh

real	0m0.718s
user	0m0.558s
sys	0m0.153s
```
```sh
$ cat ./02_common/f.tsv | wc -l
95831
$ cat ./02_common/m.tsv | wc -l
98920
$ cat ./02_common/c.tsv | wc -l
4518
```
	Make y m
	Make y f

real	85m24.803s
user	59m56.581s
sys	60m54.311s


	Make y c
	Make k c
real	6m20.333s
user	3m51.997s
sys	3m50.654s
