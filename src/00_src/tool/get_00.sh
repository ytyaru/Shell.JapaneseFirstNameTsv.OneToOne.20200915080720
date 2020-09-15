# 名前取得
# https://mnamae.jp/p/b_30423044304d.html
data=/tmp/work/data.txt
max_line="$(cat "$data" | wc -l)"
line=3
while true; do
	cat "$data" | awk 'NR=='"$line"';'
	line=$((line+4))
	[ $max_line -le $line ] && break
done
